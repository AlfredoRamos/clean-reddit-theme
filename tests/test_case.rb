# encoding: UTF-8

class TestCase
  def initialize
    @files = {
      :input  => 'style.scss',
      :output => 'style.css'
    }
  end

  def run_tests
    self.methods.grep(/^test/).each do |m|
      self.send(m)
    end
  end

  def test_sass_compilation
    system('sass -Ct compressed %1$s %2$s --sourcemap=none' % [@files[:input], @files[:output]])
    raise 'Could not generate CSS file' unless $?.to_i == 0
  end

  def test_css_file
    raise 'CSS file does not exist' if !File.exist?(@files[:output])
  end
end
