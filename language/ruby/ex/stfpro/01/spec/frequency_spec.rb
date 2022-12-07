# frozen_string_literal: true

RSpec.describe 'Check data-file in directory' do
  it 'Directory has data-file: 01.txt' do
  	#expect(true)
		File.atime '01.txt'
  end

	it "01.txt isn't directory" do
		File.directory?('01.txt')
	end

	it 'File 01.txt is readable' do
		File.chmod(0644, '../01.txt', 'out')
	end

end
