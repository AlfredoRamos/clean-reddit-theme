# encoding: UTF-8
require 'minitest/autorun'
require 'rake'
require 'fileutils'

class TestCss < Minitest::Test

  def setup
    # Load tasks
    load('Rakefile', true)

    # Build path
    @path = 'build'

    # Output filenames
    @files = ['clean-reddit-theme.css', 'clean-reddit-theme.min.css']
    @files.map! { |file| File.join(@path, file) }

    # Minumum file size (13 KiB)
    @size = (13 * 1024)

    # Clean build
    FileUtils.rm(@files, force: true)
  end

  def test_css_file
    assert !File.exist?(@files.first)

    Rake::Task['build:css'].invoke

    assert File.exist?(@files.first)
    assert_operator File.size(@files.first), :>=, @size
  end

  def test_minified_css_file
    assert !File.exist?(@files.last)

    Rake::Task['build:minified'].invoke

    assert File.exist?(@files.last)
    assert_operator File.size(@files.last), :>=, @size
  end
end
