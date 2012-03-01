require "auto_truncated_logger/version"
require 'fileutils'
require 'logger'

class AutoTruncatedLogger < Logger
  def initialize(device, shift_size = 1048576)
    super(device, 1, shift_size)
  end

  def add(severity, message = nil, progname = nil, &block)
    super(severity, message, progname, &block)
    truncate_old_file
  end

  def <<(msg)
    super(msg)
    truncate_old_file
  end

private
  def truncate_old_file
    oldfile = @logdev.filename + '.0'
    FileUtils.rm_rf oldfile if FileTest.exist? oldfile
  end
end
