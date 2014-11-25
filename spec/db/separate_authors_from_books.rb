require 'spec_helper'
require 'migration_data/testing'
require_migration 'separate_authors_from_books'

describe SeparateAuthorsFromBooks do
  let(:migration) { SeparateAuthorsFromBooks.new }

  describe '#data' do
    it 'works' do
      expect { migration.data }.to_not raise_exception
    end
  end
end

