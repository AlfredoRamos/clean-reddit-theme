require 'minitest/autorun'

class TestCss < Minitest::Test

  def self.test_order
    :alpha
  end

  def setup
    @files = {
      :input  => 'style.scss',
      :output => 'style.css'
    }
  end

  def test_0_sass_compilation
    system('sass -Ct compressed %1$s %2$s --sourcemap=none' % [
      @files[:input],
      @files[:output]
    ])

    puts 'Exit code: %d' % $?.to_i
    puts 'Input exists: %s' % File.exist?(@files[:input])
    puts 'Output exists: %s' % File.exist?(@files[:output])

    assert_same(0, $?.to_i)
  end

  def test_1_css_file
    assert File.exist?(@files[:output])
  end
end
