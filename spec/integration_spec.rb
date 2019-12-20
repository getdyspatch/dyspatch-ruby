require 'uri'
require 'spec_helper'

version = "application/vnd.dyspatch.2019.10+json"

describe 'Integration' do
  let(:drafts) { DyspatchClient::DraftsApi.new }
  let(:templates) { DyspatchClient::TemplatesApi.new }

  before(:each) do
    # uncomment below to setup host and base_path
    uri = URI.parse("https://api.dyspatch.io")
    DyspatchClient.configure do |c|
      c.host = uri.host
      c.base_path = uri.path
      c.api_key['Authorization'] = "Bearer #{ENV['DYSPATCH_API_KEY']}"
    end
  end

  describe 'templates' do
    it 'should list templates' do
      result = templates.get_templates(version)
      puts result
      template = result.data[0]

      result = templates.get_template_by_id(template.id, nil, version)
      puts result
    end
  end

  describe 'drafts' do
    it 'should list drafts' do
      result = drafts.get_drafts(version)
      puts result
      draft = result.data[0]

      result = drafts.get_draft_by_id(draft.id, "handlebars", version)
      puts result
    end
  end
end
