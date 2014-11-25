require 'spec_helper'
require 'migration_data/testing'
require_migration 'separate_editorial_from_books'

describe SeparateEditorialFromBooks do
  let(:migration) { SeparateEditorialFromBooks.new }

  describe '#data' do
    it 'works' do
      expect { migration.data }.to_not raise_exception
    end
  end
end

