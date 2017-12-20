# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171220044725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_settings", force: :cascade do |t|
    t.string "tab_name"
    t.string "theme_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grid_image_categories", force: :cascade do |t|
    t.string "name"
    t.integer "template_one_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["template_one_id"], name: "index_grid_image_categories_on_template_one_id"
  end

  create_table "grid_images", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.integer "grid_image_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grid_image_category_id"], name: "index_grid_images_on_grid_image_category_id"
  end

  create_table "incoming_contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "button_text"
    t.string "image_1"
    t.string "image_2"
    t.string "modal_name"
    t.string "modal_description"
    t.string "modal_client"
    t.date "modal_date"
    t.string "modal_service"
    t.string "modal_image_1"
    t.string "modal_image_2"
    t.string "modal_image_3"
    t.string "modal_image_4"
    t.integer "template_one_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_ones", force: :cascade do |t|
    t.boolean "about_image_show_default", default: false
    t.boolean "about_hide", default: false
    t.string "about_title"
    t.string "about_text"
    t.string "about_text_2"
    t.string "about_image"
    t.boolean "service_hide", default: false
    t.string "service_icon_1"
    t.string "service_title_1"
    t.string "service_text_1"
    t.string "service_icon_2"
    t.string "service_title_2"
    t.string "service_text_2"
    t.string "service_icon_3"
    t.string "service_title_3"
    t.string "service_text_3"
    t.string "service_icon_4"
    t.string "service_title_4"
    t.string "service_text_4"
    t.string "service_title_5"
    t.string "service_text_5"
    t.boolean "process_hide"
    t.string "main_process_title"
    t.string "main_process_title_text"
    t.string "process_icon_1"
    t.string "sub_title_1"
    t.string "process_li_1"
    t.string "process_li_2"
    t.string "process_li_3"
    t.string "process_li_4"
    t.string "process_icon_2"
    t.string "sub_title_2"
    t.string "process_li_5"
    t.string "process_li_6"
    t.string "process_li_7"
    t.string "process_li_8"
    t.string "process_icon_3"
    t.string "sub_title_3"
    t.string "process_li_9"
    t.string "process_li_10"
    t.string "process_li_11"
    t.string "process_li_12"
    t.boolean "header_hide"
    t.string "header_title"
    t.string "header_text"
    t.string "header_image"
    t.string "header_svg"
    t.boolean "header_use_default_svg"
    t.boolean "header_use_default_image"
    t.boolean "contact_hide"
    t.string "contact_title"
    t.string "contact_text"
    t.boolean "contact_sender_hide_name"
    t.string "contact_sender_name"
    t.boolean "contact_sender_hide_email"
    t.string "contact_sender_email"
    t.boolean "contact_sender_hide_phone"
    t.string "contact_sender_phone"
    t.boolean "contact_sender_hide_message"
    t.string "contact_sender_message"
    t.string "email_address_1"
    t.string "email_address_2"
    t.string "email_address_3"
    t.boolean "action_hide"
    t.string "action_text_1"
    t.string "action_text_2"
    t.string "action_text_3"
    t.string "action_text_4"
    t.string "action_text_5"
    t.string "action_text_6"
    t.string "action_text_7"
    t.string "action_button_text"
    t.boolean "action_use_default_image"
    t.string "action_image"
    t.boolean "testimonial_hide"
    t.boolean "portfolio_carousel_hide"
    t.boolean "portfolio_header_hide"
    t.string "portfolio_header_title"
    t.string "portfolio_header_text"
    t.boolean "portfolio_grid_hide"
    t.boolean "footer_hide"
    t.boolean "footer_hide_telephone"
    t.string "footer_icon_telephone"
    t.string "footer_telephone_title"
    t.string "footer_telephone_number"
    t.boolean "footer_hide_address"
    t.string "footer_icon_address"
    t.string "footer_address_title"
    t.string "footer_address_street"
    t.string "footer_address_city"
    t.string "footer_address_state"
    t.string "footer_address_postal_code"
    t.boolean "footer_hide_email"
    t.string "footer_icon_email"
    t.string "footer_email_title"
    t.string "footer_email_address"
    t.boolean "footer_hide_social_1"
    t.string "footer_social_icon_1"
    t.string "footer_social_url_1"
    t.boolean "footer_hide_social_2"
    t.string "footer_social_icon_2"
    t.string "footer_social_url_2"
    t.boolean "footer_hide_social_3"
    t.string "footer_social_icon_3"
    t.string "footer_social_url_3"
    t.boolean "footer_hide_social_4"
    t.string "footer_social_icon_4"
    t.string "footer_social_url_4"
    t.boolean "footer_hide_social_5"
    t.string "footer_social_icon_5"
    t.string "footer_social_url_5"
    t.boolean "footer_hide_social_6"
    t.string "footer_social_icon_6"
    t.string "footer_social_url_6"
    t.boolean "footer_use_default_image"
    t.string "footer_image"
    t.boolean "navigation_hide"
    t.string "navigation_title"
    t.boolean "newsletter_hide"
    t.string "newsletter_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "testimonial_count"
    t.string "portfolio_grid_title"
    t.string "portfolio_grid_text"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "image"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
