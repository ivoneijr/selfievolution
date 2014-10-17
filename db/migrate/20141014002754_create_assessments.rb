class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |a|

      a.decimal :subscapularis
      a.decimal :triceps
      a.decimal :chest #peito
      a.decimal :axilar
      a.decimal :supra
      a.decimal :abs
      a.decimal :thigh #coxa

      a.decimal :height #altura
      a.decimal :weight #peso
      a.decimal :bmi #imc
      a.decimal :bodyfat #bf

      a.references :coach, index: true
      a.references :gym, index: true
      a.references :pupil, index: true

      a.timestamps

    end
  end
end
