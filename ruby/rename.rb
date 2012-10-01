#!/usr/bin/env ruby
# encoding: utf-8

require 'optparse'
require 'optparse/time'
require 'ostruct'
require 'pp'

class Optparse

  CODES = %w[iso-2022-jp shift_jis euc-jp utf8 binary]
  CODE_ALIASES = { "jis" => "iso-2022-jp", "sjis" => "shift_jis" }

  #
  # Return a structure describing the options.
  #
  def self.parse(args)
    # The options specified on the command line will be collected in *options*.
    # We set default values here.
    options = OpenStruct.new
    options.root = Dir.pwd
    options.recurse = false
    options.verbose = false

    opts = OptionParser.new do |opts|
      opts.banner = "Usage: rename.rb [options]"

      opts.separator ""
      opts.separator "Specific options:"

      opts.on('-r', '--root ROOT DIRECTORY',
              'Root directory to search for the files to replace. Defaults to the directory rename.rb is located in.') do |path|
        options.root = path
      end

      opts.on('-i', '--input EXTENSION',
              'The original extension') do |ext|
        options.i = ext
        options.i.sub!(/\A\.?(?=.)/, ".")  # Ensure extension begins with dot.
      end

      opts.on('-o', '--output EXTENSION',
             'The new extension') do |ext|
        options.o = ext
        options.o.sub!(/\A\.?(?=.)/, ".")  # Ensure extension begins with dot.
      end

      opts.on('-R', '--recursive',
             'Recurse down the ROOT DIRECTORY') do
        options.recurse = true
      end

      opts.on('-v', '--verbose',
             'Show verbose rename message') do
        options.verbose = true
      end

      opts.separator ""
      opts.separator "Common options:"

      # No argument, shows at tail.  This will print an options summary.
      # Try it and see!
      opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
      end

      # Another typical switch to print the version.
      opts.on_tail("--version", "Show version") do
        puts OptionParser::Version.join('.')
        exit
      end
    end

    opts.parse!(args)
    options
  end  # parse()
end  # class OptparseExample

def rename(dir, options)
  if File.directory?(dir) && options.i && options.o
    file_glob = File.join(dir, (options.recurse ? "**" : ''), "*#{options.i}")

    Dir.glob(file_glob) do |file|
      basename = File.basename(file, options.i)
      dirname = File.dirname(file)
      new_file = File.join(dirname, "#{basename}#{options.o}")

      p "#{file} -> #{new_file}" if options.verbose
      File.rename(file, new_file)
    end
  end
end

options = Optparse.parse(ARGV)
rename(options.root, options)
