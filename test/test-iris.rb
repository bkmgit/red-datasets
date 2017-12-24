class IrisTest < Test::Unit::TestCase
  def setup
    @dataset = Datasets::Iris.new
  end

  test("#each") do
    assert_equal([
                   [5.1, 3.5, 1.4, 0.2, "Iris-setosa"],
                   [4.9, 3.0, 1.4, 0.2, "Iris-setosa"],
                   [4.7, 3.2, 1.3, 0.2, "Iris-setosa"],
                 ],
                 @dataset.each.first(3))
  end
end
