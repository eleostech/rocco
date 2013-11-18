class RoccoSpecifiedParsersTests < Test::Unit::TestCase
  def test_parse_code_block
    r = Rocco.new( 'test' ) { "" } # throwaway

    code_block_with_parser = "!!!rb\ndef codeblock\nend\n"
    assert_equal(
                 r.parse_code_block(code_block_with_parser),
                 ["def codeblock\nend\n", "rb"])

    code_block_without_parser = "def codeblock\nend\n"
    assert_equal(
                 r.parse_code_block(code_block_without_parser),
                 ["def codeblock\nend\n", nil])
  end
end
