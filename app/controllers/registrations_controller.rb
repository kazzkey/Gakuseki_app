class RegistrationsController < ApplicationController
  def index
    @students = Student.select(:id, :grade_id, :kumi_id)
  end

  def new
    @students = Student.where(grade_id: params[:grade_id]).where(kumi_id: params[:kumi_id]).order(:shusseki_id)
    @grade = Grade.find(params[:grade_id])
    @kumi = Kumi.find(params[:kumi_id])
    @student = Student.new
  end

  def create
    @grade = Grade.find(params[:student][:grade_id])
    @kumi = Kumi.find(params[:student][:kumi_id])
    @student = Student.new(registration_params)
    @student.shusseki_id = params[:student][:shusseki_id]
    if params[:end].present? && @student.save
      flash[:notice] = "「#{@student.shusseki_id}：#{@student.first_name}#{@student.last_name}」さんを保存しました。"
      redirect_to registrations_path
    elsif @student.save
      flash[:notice] = "「#{@student.shusseki_id}：#{@student.first_name}#{@student.last_name}」さんを保存しました。"
      redirect_to action: :new, grade_id: @student.grade_id, kumi_id: @student.kumi_id
    else
      render :new
    end
  end

  private

  def registration_params
    params.require(:student).permit %i(first_name
                                      last_name
                                      first_name_furigana
                                      last_name_furigana
                                      grade_id
                                      kumi_id
                                      shusseki_id
                                    )
  end
end
