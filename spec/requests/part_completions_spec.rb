require 'rails_helper'

RSpec.describe "PartCompletions", type: :request do
  describe "GET /part_completions" do
    it "works! (now write some real specs)" do
      get part_completions_path
      expect(response).to have_http_status(200)
    end
  end
end
