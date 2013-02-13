class MarksController < ApplicationController
  def index
  end

  def sample_excel_download
    render xlsx: "sample_excel_download", disposition: "inline", filename: "sample_excel_file.xlsx"
  end

  def download_marks_as_excel
    @marks = Hash.new
    @name = params[:name]
    @marks[:science_marks] = params[:science_marks]
    @marks[:maths_marks] = params[:maths_marks]
    @marks[:computer_science_marks] = params[:computer_science_marks]
    @marks[:english_marks] = params[:english_marks]
    @marks[:regional_language_marks] = params[:regional_language_marks]
    @marks[:should_display_pie_chart] = params[:should_display_pie_chart]
    @total = @marks[:science_marks].to_i + @marks[:maths_marks].to_i + @marks[:computer_science_marks].to_i + @marks[:english_marks].to_i + @marks[:regional_language_marks].to_i
    render xlsx: "download_marks_as_excel", disposition: "inline", filename: "marks_excel.xlsx"
  end
end
