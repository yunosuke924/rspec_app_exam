require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:project) { create(:project) }

  describe 'バリデーション確認' do
    it '名前が未入力のプロジェクトは作成できないこと' do
      project = Project.new
      expect(project.valid?).to be false
      expect(project.errors[:name]).to include("can't be blank")
    end

    it '重複した名前のプロジェクトは作成できないこと' do
      duplicated_project = Project.new(name: project.name)
      expect(duplicated_project.valid?).to be false
      expect(duplicated_project.errors[:name]).to include('has already been taken')
    end
  end
end
