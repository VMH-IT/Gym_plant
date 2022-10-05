# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_05_034509) do
  create_table "admins", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "date_trainings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.datetime "time_training"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercise_route_package", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "exercise_id", null: false
    t.bigint "route_package_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercise_route_package_on_exercise_id"
    t.index ["route_package_id"], name: "index_exercise_route_package_on_route_package_id"
  end

  create_table "exercises", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "introduce"
    t.string "category_route"
    t.string "name_exersice"
    t.string "perform"
    t.string "time_exersice"
    t.string "num_sets"
    t.string "num_reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gymers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name_gymer"
    t.string "phoneNumber"
    t.text "address"
    t.integer "age"
    t.integer "gender"
    t.string "weight"
    t.string "height"
    t.text "tracked_exersice"
    t.string "tracked_route"
    t.string "packages_use"
    t.string "pt_use"
    t.datetime "start_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_gymers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_gymers_on_reset_password_token", unique: true
  end

  create_table "ptgyms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "pt_name", default: "", null: false
    t.string "phoneNumber"
    t.text "address"
    t.integer "age"
    t.integer "gender"
    t.string "weight"
    t.string "height"
    t.string "academic_level"
    t.string "tracked_route"
    t.index ["email"], name: "index_ptgyms_on_email", unique: true
  end

  create_table "route_packages", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "weight_gain"
    t.string "weight_loss"
    t.string "muscle_gain"
    t.string "height_gain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traning_packs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "pack_type"
    t.string "pack_price"
    t.string "time_use"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
