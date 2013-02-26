require 'spec_helper'

describe "Bookmarks" do

  subject { page }

  shared_examples_for "all bookmark pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end
  
  describe "Bookmarks page" do
      before { visit bookmarks_path }

    let(:heading)    { 'Bookmark List' }
    let(:page_title) { 'Bookmarks' }
    it_should_behave_like "all bookmark pages"

  end

  describe "New page" do
      before { visit '#new' }

    let(:heading)    { 'Create Bookmark' }
    let(:page_title) { 'New' }
    it_should_behave_like "all bookmark pages"
  end

  describe "Show page" do
    before { visit '#show' }

    let(:heading)    { 'Bookmark Detail' }
    let(:page_title) { 'Show' }
    it_should_behave_like "all bookmark pages"
  end

  describe "Edit page" do
      before { visit '#edit' }

    let(:heading)    { 'Edit Bookmark' }
    let(:page_title) { 'Edit' }
    it_should_behave_like "all bookmark pages"
  end

end
