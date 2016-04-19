class DecoratorTest < Test::Unit::TestCase
  Disc = Struct.new(:title)

  module DiscDecorator
  end

  test 'with Decorator' do
    disc = Disc.new('The book')
    decorated_disc = ActiveDecorator::Decorator.instance.decorate(disc)
    assert_kind_of Disc, decorated_disc
    assert_kind_of DiscDecorator, decorated_disc
    assert_kind_of DiscDecorator, ActiveDecorator::Decorator.instance.decorate(decorated_disc)
  end
end
