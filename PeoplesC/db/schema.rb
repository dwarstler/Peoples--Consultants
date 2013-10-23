# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131003213504) do

  create_table "admins", force: true do |t|
    t.string   "admin_name"
    t.string   "email_address"
    t.string   "admin_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bak_tsea0_assets", force: true do |t|
    t.integer "parent_id",              default: 0, null: false
    t.integer "lft",                    default: 0, null: false
    t.integer "rgt",                    default: 0, null: false
    t.integer "level",                              null: false
    t.string  "name",      limit: 50,               null: false
    t.string  "title",     limit: 100,              null: false
    t.string  "rules",     limit: 5120,             null: false
  end

  add_index "bak_tsea0_assets", ["lft", "rgt"], name: "idx_lft_rgt", using: :btree
  add_index "bak_tsea0_assets", ["name"], name: "idx_asset_name", unique: true, using: :btree
  add_index "bak_tsea0_assets", ["parent_id"], name: "idx_parent_id", using: :btree

  create_table "bak_tsea0_associations", id: false, force: true do |t|
    t.integer "id",                 null: false
    t.string  "context", limit: 50, null: false
    t.string  "key",     limit: 32, null: false
  end

  add_index "bak_tsea0_associations", ["key"], name: "idx_key", using: :btree

  create_table "bak_tsea0_banner_clients", force: true do |t|
    t.string   "name",                        default: "", null: false
    t.string   "contact",                     default: "", null: false
    t.string   "email",                       default: "", null: false
    t.text     "extrainfo",                                null: false
    t.integer  "state",             limit: 1, default: 0,  null: false
    t.integer  "checked_out",                 default: 0,  null: false
    t.datetime "checked_out_time",                         null: false
    t.text     "metakey",                                  null: false
    t.integer  "own_prefix",        limit: 1, default: 0,  null: false
    t.string   "metakey_prefix",              default: "", null: false
    t.integer  "purchase_type",     limit: 1, default: -1, null: false
    t.integer  "track_clicks",      limit: 1, default: -1, null: false
    t.integer  "track_impressions", limit: 1, default: -1, null: false
  end

  add_index "bak_tsea0_banner_clients", ["metakey_prefix"], name: "idx_metakey_prefix", using: :btree
  add_index "bak_tsea0_banner_clients", ["own_prefix"], name: "idx_own_prefix", using: :btree

  create_table "bak_tsea0_banner_tracks", id: false, force: true do |t|
    t.datetime "track_date",             null: false
    t.integer  "track_type",             null: false
    t.integer  "banner_id",              null: false
    t.integer  "count",      default: 0, null: false
  end

  add_index "bak_tsea0_banner_tracks", ["banner_id"], name: "idx_banner_id", using: :btree
  add_index "bak_tsea0_banner_tracks", ["track_date"], name: "idx_track_date", using: :btree
  add_index "bak_tsea0_banner_tracks", ["track_type"], name: "idx_track_type", using: :btree

  create_table "bak_tsea0_banners", force: true do |t|
    t.integer  "cid",                            default: 0,     null: false
    t.integer  "type",                           default: 0,     null: false
    t.string   "name",                           default: "",    null: false
    t.string   "alias",                          default: "",    null: false
    t.integer  "imptotal",                       default: 0,     null: false
    t.integer  "impmade",                        default: 0,     null: false
    t.integer  "clicks",                         default: 0,     null: false
    t.string   "clickurl",          limit: 200,  default: "",    null: false
    t.integer  "state",             limit: 1,    default: 0,     null: false
    t.integer  "catid",                          default: 0,     null: false
    t.text     "description",                                    null: false
    t.string   "custombannercode",  limit: 2048,                 null: false
    t.boolean  "sticky",                         default: false, null: false
    t.integer  "ordering",                       default: 0,     null: false
    t.text     "metakey",                                        null: false
    t.text     "params",                                         null: false
    t.boolean  "own_prefix",                     default: false, null: false
    t.string   "metakey_prefix",                 default: "",    null: false
    t.integer  "purchase_type",     limit: 1,    default: -1,    null: false
    t.integer  "track_clicks",      limit: 1,    default: -1,    null: false
    t.integer  "track_impressions", limit: 1,    default: -1,    null: false
    t.integer  "checked_out",                    default: 0,     null: false
    t.datetime "checked_out_time",                               null: false
    t.datetime "publish_up",                                     null: false
    t.datetime "publish_down",                                   null: false
    t.datetime "reset",                                          null: false
    t.datetime "created",                                        null: false
    t.string   "language",          limit: 7,    default: "",    null: false
    t.integer  "created_by",                     default: 0,     null: false
    t.string   "created_by_alias",               default: "",    null: false
    t.datetime "modified",                                       null: false
    t.integer  "modified_by",                    default: 0,     null: false
    t.integer  "version",                        default: 1,     null: false
  end

  add_index "bak_tsea0_banners", ["catid"], name: "idx_banner_catid", using: :btree
  add_index "bak_tsea0_banners", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_banners", ["metakey_prefix"], name: "idx_metakey_prefix", using: :btree
  add_index "bak_tsea0_banners", ["own_prefix"], name: "idx_own_prefix", using: :btree
  add_index "bak_tsea0_banners", ["state"], name: "idx_state", using: :btree

  create_table "bak_tsea0_categories", force: true do |t|
    t.integer  "asset_id",                          default: 0,     null: false
    t.integer  "parent_id",                         default: 0,     null: false
    t.integer  "lft",                               default: 0,     null: false
    t.integer  "rgt",                               default: 0,     null: false
    t.integer  "level",                             default: 0,     null: false
    t.string   "path",                              default: "",    null: false
    t.string   "extension",        limit: 50,       default: "",    null: false
    t.string   "title",                                             null: false
    t.string   "alias",                             default: "",    null: false
    t.string   "note",                              default: "",    null: false
    t.text     "description",      limit: 16777215,                 null: false
    t.boolean  "published",                         default: false, null: false
    t.integer  "checked_out",                       default: 0,     null: false
    t.datetime "checked_out_time",                                  null: false
    t.integer  "access",                            default: 0,     null: false
    t.text     "params",                                            null: false
    t.string   "metadesc",         limit: 1024,                     null: false
    t.string   "metakey",          limit: 1024,                     null: false
    t.string   "metadata",         limit: 2048,                     null: false
    t.integer  "created_user_id",                   default: 0,     null: false
    t.datetime "created_time",                                      null: false
    t.integer  "modified_user_id",                  default: 0,     null: false
    t.datetime "modified_time",                                     null: false
    t.integer  "hits",                              default: 0,     null: false
    t.string   "language",         limit: 7,                        null: false
    t.integer  "version",                           default: 1,     null: false
  end

  add_index "bak_tsea0_categories", ["access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_categories", ["alias"], name: "idx_alias", using: :btree
  add_index "bak_tsea0_categories", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "bak_tsea0_categories", ["extension", "published", "access"], name: "cat_idx", using: :btree
  add_index "bak_tsea0_categories", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_categories", ["lft", "rgt"], name: "idx_left_right", using: :btree
  add_index "bak_tsea0_categories", ["path"], name: "idx_path", using: :btree

  create_table "bak_tsea0_contact_details", force: true do |t|
    t.string   "name",                              default: "",    null: false
    t.string   "alias",                             default: "",    null: false
    t.string   "con_position"
    t.text     "address"
    t.string   "suburb",           limit: 100
    t.string   "state",            limit: 100
    t.string   "country",          limit: 100
    t.string   "postcode",         limit: 100
    t.string   "telephone"
    t.string   "fax"
    t.text     "misc",             limit: 16777215
    t.string   "image"
    t.string   "email_to"
    t.boolean  "default_con",                       default: false, null: false
    t.boolean  "published",                         default: false, null: false
    t.integer  "checked_out",                       default: 0,     null: false
    t.datetime "checked_out_time",                                  null: false
    t.integer  "ordering",                          default: 0,     null: false
    t.text     "params",                                            null: false
    t.integer  "user_id",                           default: 0,     null: false
    t.integer  "catid",                             default: 0,     null: false
    t.integer  "access",                            default: 0,     null: false
    t.string   "mobile",                            default: "",    null: false
    t.string   "webpage",                           default: "",    null: false
    t.string   "sortname1",                                         null: false
    t.string   "sortname2",                                         null: false
    t.string   "sortname3",                                         null: false
    t.string   "language",         limit: 7,                        null: false
    t.datetime "created",                                           null: false
    t.integer  "created_by",                        default: 0,     null: false
    t.string   "created_by_alias",                  default: "",    null: false
    t.datetime "modified",                                          null: false
    t.integer  "modified_by",                       default: 0,     null: false
    t.text     "metakey",                                           null: false
    t.text     "metadesc",                                          null: false
    t.text     "metadata",                                          null: false
    t.integer  "featured",         limit: 1,        default: 0,     null: false
    t.string   "xreference",       limit: 50,                       null: false
    t.datetime "publish_up",                                        null: false
    t.datetime "publish_down",                                      null: false
    t.integer  "version",                           default: 1,     null: false
    t.integer  "hits",                              default: 0,     null: false
  end

  add_index "bak_tsea0_contact_details", ["access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_contact_details", ["catid"], name: "idx_catid", using: :btree
  add_index "bak_tsea0_contact_details", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "bak_tsea0_contact_details", ["created_by"], name: "idx_createdby", using: :btree
  add_index "bak_tsea0_contact_details", ["featured", "catid"], name: "idx_featured_catid", using: :btree
  add_index "bak_tsea0_contact_details", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_contact_details", ["published"], name: "idx_state", using: :btree
  add_index "bak_tsea0_contact_details", ["xreference"], name: "idx_xreference", using: :btree

  create_table "bak_tsea0_content", force: true do |t|
    t.integer  "asset_id",                          default: 0,  null: false
    t.string   "title",                             default: "", null: false
    t.string   "alias",                             default: "", null: false
    t.text     "introtext",        limit: 16777215,              null: false
    t.text     "fulltext",         limit: 16777215,              null: false
    t.integer  "state",            limit: 1,        default: 0,  null: false
    t.integer  "catid",                             default: 0,  null: false
    t.datetime "created",                                        null: false
    t.integer  "created_by",                        default: 0,  null: false
    t.string   "created_by_alias",                  default: "", null: false
    t.datetime "modified",                                       null: false
    t.integer  "modified_by",                       default: 0,  null: false
    t.integer  "checked_out",                       default: 0,  null: false
    t.datetime "checked_out_time",                               null: false
    t.datetime "publish_up",                                     null: false
    t.datetime "publish_down",                                   null: false
    t.text     "images",                                         null: false
    t.text     "urls",                                           null: false
    t.string   "attribs",          limit: 5120,                  null: false
    t.integer  "version",                           default: 1,  null: false
    t.integer  "ordering",                          default: 0,  null: false
    t.text     "metakey",                                        null: false
    t.text     "metadesc",                                       null: false
    t.integer  "access",                            default: 0,  null: false
    t.integer  "hits",                              default: 0,  null: false
    t.text     "metadata",                                       null: false
    t.integer  "featured",         limit: 1,        default: 0,  null: false
    t.string   "language",         limit: 7,                     null: false
    t.string   "xreference",       limit: 50,                    null: false
  end

  add_index "bak_tsea0_content", ["access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_content", ["catid"], name: "idx_catid", using: :btree
  add_index "bak_tsea0_content", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "bak_tsea0_content", ["created_by"], name: "idx_createdby", using: :btree
  add_index "bak_tsea0_content", ["featured", "catid"], name: "idx_featured_catid", using: :btree
  add_index "bak_tsea0_content", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_content", ["state"], name: "idx_state", using: :btree
  add_index "bak_tsea0_content", ["xreference"], name: "idx_xreference", using: :btree

  create_table "bak_tsea0_content_frontpage", primary_key: "content_id", force: true do |t|
    t.integer "ordering", default: 0, null: false
  end

  create_table "bak_tsea0_content_rating", primary_key: "content_id", force: true do |t|
    t.integer "rating_sum",              default: 0,  null: false
    t.integer "rating_count",            default: 0,  null: false
    t.string  "lastip",       limit: 50, default: "", null: false
  end

  create_table "bak_tsea0_content_types", primary_key: "type_id", force: true do |t|
    t.string "type_title",     default: "", null: false
    t.string "type_alias",     default: "", null: false
    t.string "table",          default: "", null: false
    t.text   "rules",                       null: false
    t.text   "field_mappings",              null: false
    t.string "router",         default: "", null: false
  end

  add_index "bak_tsea0_content_types", ["type_alias"], name: "idx_alias", using: :btree

  create_table "bak_tsea0_contentitem_tag_map", id: false, force: true do |t|
    t.string    "type_alias",                default: "", null: false
    t.integer   "core_content_id",                        null: false
    t.integer   "content_item_id",                        null: false
    t.integer   "tag_id",                                 null: false
    t.timestamp "tag_date",                               null: false
    t.integer   "type_id",         limit: 3,              null: false
  end

  add_index "bak_tsea0_contentitem_tag_map", ["core_content_id"], name: "idx_core_content_id", using: :btree
  add_index "bak_tsea0_contentitem_tag_map", ["tag_date", "tag_id"], name: "idx_date_id", using: :btree
  add_index "bak_tsea0_contentitem_tag_map", ["tag_id", "type_id"], name: "idx_tag_type", using: :btree
  add_index "bak_tsea0_contentitem_tag_map", ["tag_id"], name: "idx_tag", using: :btree
  add_index "bak_tsea0_contentitem_tag_map", ["type_id", "content_item_id", "tag_id"], name: "uc_ItemnameTagid", unique: true, using: :btree
  add_index "bak_tsea0_contentitem_tag_map", ["type_id"], name: "idx_type", using: :btree

  create_table "bak_tsea0_core_log_searches", id: false, force: true do |t|
    t.string  "search_term", limit: 128, default: "", null: false
    t.integer "hits",                    default: 0,  null: false
  end

  create_table "bak_tsea0_extensions", primary_key: "extension_id", force: true do |t|
    t.string   "name",             limit: 100,             null: false
    t.string   "type",             limit: 20,              null: false
    t.string   "element",          limit: 100,             null: false
    t.string   "folder",           limit: 100,             null: false
    t.integer  "client_id",        limit: 1,               null: false
    t.integer  "enabled",          limit: 1,   default: 1, null: false
    t.integer  "access",                       default: 1, null: false
    t.integer  "protected",        limit: 1,   default: 0, null: false
    t.text     "manifest_cache",                           null: false
    t.text     "params",                                   null: false
    t.text     "custom_data",                              null: false
    t.text     "system_data",                              null: false
    t.integer  "checked_out",                  default: 0, null: false
    t.datetime "checked_out_time",                         null: false
    t.integer  "ordering",                     default: 0
    t.integer  "state",                        default: 0
  end

  add_index "bak_tsea0_extensions", ["element", "client_id"], name: "element_clientid", using: :btree
  add_index "bak_tsea0_extensions", ["element", "folder", "client_id"], name: "element_folder_clientid", using: :btree
  add_index "bak_tsea0_extensions", ["type", "element", "folder", "client_id"], name: "extension", using: :btree

  create_table "bak_tsea0_finder_filters", primary_key: "filter_id", force: true do |t|
    t.string   "title",                                            null: false
    t.string   "alias",                                            null: false
    t.boolean  "state",                             default: true, null: false
    t.datetime "created",                                          null: false
    t.integer  "created_by",                                       null: false
    t.string   "created_by_alias",                                 null: false
    t.datetime "modified",                                         null: false
    t.integer  "modified_by",                       default: 0,    null: false
    t.integer  "checked_out",                       default: 0,    null: false
    t.datetime "checked_out_time",                                 null: false
    t.integer  "map_count",                         default: 0,    null: false
    t.text     "data",                                             null: false
    t.text     "params",           limit: 16777215
  end

  create_table "bak_tsea0_finder_links", primary_key: "link_id", force: true do |t|
    t.string   "url",                                                null: false
    t.string   "route",                                              null: false
    t.string   "title"
    t.string   "description"
    t.datetime "indexdate",                                          null: false
    t.string   "md5sum",             limit: 32
    t.boolean  "published",                           default: true, null: false
    t.integer  "state",                               default: 1
    t.integer  "access",                              default: 0
    t.string   "language",           limit: 8,                       null: false
    t.datetime "publish_start_date",                                 null: false
    t.datetime "publish_end_date",                                   null: false
    t.datetime "start_date",                                         null: false
    t.datetime "end_date",                                           null: false
    t.float    "list_price",                          default: 0.0,  null: false
    t.float    "sale_price",                          default: 0.0,  null: false
    t.integer  "type_id",                                            null: false
    t.binary   "object",             limit: 16777215,                null: false
  end

  add_index "bak_tsea0_finder_links", ["md5sum"], name: "idx_md5", using: :btree
  add_index "bak_tsea0_finder_links", ["published", "state", "access", "publish_start_date", "publish_end_date", "list_price"], name: "idx_published_list", using: :btree
  add_index "bak_tsea0_finder_links", ["published", "state", "access", "publish_start_date", "publish_end_date", "sale_price"], name: "idx_published_sale", using: :btree
  add_index "bak_tsea0_finder_links", ["title"], name: "idx_title", using: :btree
  add_index "bak_tsea0_finder_links", ["type_id"], name: "idx_type", using: :btree
  add_index "bak_tsea0_finder_links", ["url"], name: "idx_url", length: {"url"=>75}, using: :btree

  create_table "bak_tsea0_finder_links_terms0", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms0", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms0", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms1", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms1", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms1", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms2", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms2", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms2", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms3", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms3", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms3", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms4", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms4", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms4", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms5", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms5", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms5", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms6", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms6", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms6", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms7", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms7", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms7", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms8", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms8", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms8", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_terms9", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_terms9", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_terms9", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_termsa", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_termsa", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_termsa", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_termsb", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_termsb", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_termsb", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_termsc", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_termsc", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_termsc", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_termsd", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_termsd", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_termsd", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_termse", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_termse", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_termse", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_links_termsf", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "bak_tsea0_finder_links_termsf", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "bak_tsea0_finder_links_termsf", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "bak_tsea0_finder_taxonomy", force: true do |t|
    t.integer "parent_id", default: 0,     null: false
    t.string  "title",                     null: false
    t.boolean "state",     default: true,  null: false
    t.boolean "access",    default: false, null: false
    t.boolean "ordering",  default: false, null: false
  end

  add_index "bak_tsea0_finder_taxonomy", ["access"], name: "access", using: :btree
  add_index "bak_tsea0_finder_taxonomy", ["ordering"], name: "ordering", using: :btree
  add_index "bak_tsea0_finder_taxonomy", ["parent_id", "state", "access"], name: "idx_parent_published", using: :btree
  add_index "bak_tsea0_finder_taxonomy", ["parent_id"], name: "parent_id", using: :btree
  add_index "bak_tsea0_finder_taxonomy", ["state"], name: "state", using: :btree

  create_table "bak_tsea0_finder_taxonomy_map", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "node_id", null: false
  end

  add_index "bak_tsea0_finder_taxonomy_map", ["link_id"], name: "link_id", using: :btree
  add_index "bak_tsea0_finder_taxonomy_map", ["node_id"], name: "node_id", using: :btree

  create_table "bak_tsea0_finder_terms", primary_key: "term_id", force: true do |t|
    t.string  "term",     limit: 75,                 null: false
    t.string  "stem",     limit: 75,                 null: false
    t.boolean "common",              default: false, null: false
    t.boolean "phrase",              default: false, null: false
    t.float   "weight",              default: 0.0,   null: false
    t.string  "soundex",  limit: 75,                 null: false
    t.integer "links",               default: 0,     null: false
    t.string  "language", limit: 3,  default: "",    null: false
  end

  add_index "bak_tsea0_finder_terms", ["soundex", "phrase"], name: "idx_soundex_phrase", using: :btree
  add_index "bak_tsea0_finder_terms", ["stem", "phrase"], name: "idx_stem_phrase", using: :btree
  add_index "bak_tsea0_finder_terms", ["term", "phrase"], name: "idx_term_phrase", using: :btree
  add_index "bak_tsea0_finder_terms", ["term"], name: "idx_term", unique: true, using: :btree

  create_table "bak_tsea0_finder_terms_common", id: false, force: true do |t|
    t.string "term",     limit: 75, null: false
    t.string "language", limit: 3,  null: false
  end

  add_index "bak_tsea0_finder_terms_common", ["language"], name: "idx_lang", using: :btree
  add_index "bak_tsea0_finder_terms_common", ["term", "language"], name: "idx_word_lang", using: :btree

  create_table "bak_tsea0_finder_tokens", id: false, force: true do |t|
    t.string  "term",     limit: 75,                 null: false
    t.string  "stem",     limit: 75,                 null: false
    t.boolean "common",              default: false, null: false
    t.boolean "phrase",              default: false, null: false
    t.float   "weight",              default: 1.0,   null: false
    t.boolean "context",             default: false, null: false
    t.string  "language", limit: 3,  default: "",    null: false
  end

  add_index "bak_tsea0_finder_tokens", ["context"], name: "idx_context", using: :hash
  add_index "bak_tsea0_finder_tokens", ["term"], name: "idx_word", using: :hash

  create_table "bak_tsea0_finder_tokens_aggregate", id: false, force: true do |t|
    t.integer "term_id",                                   null: false
    t.string  "map_suffix",     limit: 1,                  null: false
    t.string  "term",           limit: 75,                 null: false
    t.string  "stem",           limit: 75,                 null: false
    t.boolean "common",                    default: false, null: false
    t.boolean "phrase",                    default: false, null: false
    t.float   "term_weight",                               null: false
    t.boolean "context",                   default: false, null: false
    t.float   "context_weight",                            null: false
    t.float   "total_weight",                              null: false
    t.string  "language",       limit: 3,  default: "",    null: false
  end

  add_index "bak_tsea0_finder_tokens_aggregate", ["term"], name: "token", using: :hash
  add_index "bak_tsea0_finder_tokens_aggregate", ["term_id"], name: "keyword_id", using: :hash

  create_table "bak_tsea0_finder_types", force: true do |t|
    t.string "title", limit: 100, null: false
    t.string "mime",  limit: 100, null: false
  end

  add_index "bak_tsea0_finder_types", ["title"], name: "title", unique: true, using: :btree

  create_table "bak_tsea0_languages", primary_key: "lang_id", force: true do |t|
    t.string  "lang_code",    limit: 7,                 null: false
    t.string  "title",        limit: 50,                null: false
    t.string  "title_native", limit: 50,                null: false
    t.string  "sef",          limit: 50,                null: false
    t.string  "image",        limit: 50,                null: false
    t.string  "description",  limit: 512,               null: false
    t.text    "metakey",                                null: false
    t.text    "metadesc",                               null: false
    t.string  "sitename",     limit: 1024, default: "", null: false
    t.integer "published",                 default: 0,  null: false
    t.integer "access",                    default: 0,  null: false
    t.integer "ordering",                  default: 0,  null: false
  end

  add_index "bak_tsea0_languages", ["access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_languages", ["image"], name: "idx_image", unique: true, using: :btree
  add_index "bak_tsea0_languages", ["lang_code"], name: "idx_langcode", unique: true, using: :btree
  add_index "bak_tsea0_languages", ["ordering"], name: "idx_ordering", using: :btree
  add_index "bak_tsea0_languages", ["sef"], name: "idx_sef", unique: true, using: :btree

  create_table "bak_tsea0_menu", force: true do |t|
    t.string    "menutype",          limit: 24,                null: false
    t.string    "title",                                       null: false
    t.string    "alias",                                       null: false
    t.string    "note",                           default: "", null: false
    t.string    "path",              limit: 1024,              null: false
    t.string    "link",              limit: 1024,              null: false
    t.string    "type",              limit: 16,                null: false
    t.integer   "published",         limit: 1,    default: 0,  null: false
    t.integer   "parent_id",                      default: 1,  null: false
    t.integer   "level",                          default: 0,  null: false
    t.integer   "component_id",                   default: 0,  null: false
    t.integer   "checked_out",                    default: 0,  null: false
    t.timestamp "checked_out_time",                            null: false
    t.integer   "browserNav",        limit: 1,    default: 0,  null: false
    t.integer   "access",                         default: 0,  null: false
    t.string    "img",                                         null: false
    t.integer   "template_style_id",              default: 0,  null: false
    t.text      "params",                                      null: false
    t.integer   "lft",                            default: 0,  null: false
    t.integer   "rgt",                            default: 0,  null: false
    t.integer   "home",              limit: 1,    default: 0,  null: false
    t.string    "language",          limit: 7,    default: "", null: false
    t.integer   "client_id",         limit: 1,    default: 0,  null: false
  end

  add_index "bak_tsea0_menu", ["alias"], name: "idx_alias", using: :btree
  add_index "bak_tsea0_menu", ["client_id", "parent_id", "alias", "language"], name: "idx_client_id_parent_id_alias_language", unique: true, using: :btree
  add_index "bak_tsea0_menu", ["component_id", "menutype", "published", "access"], name: "idx_componentid", using: :btree
  add_index "bak_tsea0_menu", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_menu", ["lft", "rgt"], name: "idx_left_right", using: :btree
  add_index "bak_tsea0_menu", ["menutype"], name: "idx_menutype", using: :btree
  add_index "bak_tsea0_menu", ["path"], name: "idx_path", length: {"path"=>255}, using: :btree

  create_table "bak_tsea0_menu_types", force: true do |t|
    t.string "menutype",    limit: 24,              null: false
    t.string "title",       limit: 48,              null: false
    t.string "description",            default: "", null: false
  end

  add_index "bak_tsea0_menu_types", ["menutype"], name: "idx_menutype", unique: true, using: :btree

  create_table "bak_tsea0_messages", primary_key: "message_id", force: true do |t|
    t.integer  "user_id_from",           default: 0,     null: false
    t.integer  "user_id_to",             default: 0,     null: false
    t.integer  "folder_id",    limit: 1, default: 0,     null: false
    t.datetime "date_time",                              null: false
    t.boolean  "state",                  default: false, null: false
    t.boolean  "priority",               default: false, null: false
    t.string   "subject",                default: "",    null: false
    t.text     "message",                                null: false
  end

  add_index "bak_tsea0_messages", ["user_id_to", "state"], name: "useridto_state", using: :btree

  create_table "bak_tsea0_messages_cfg", id: false, force: true do |t|
    t.integer "user_id",               default: 0,  null: false
    t.string  "cfg_name",  limit: 100, default: "", null: false
    t.string  "cfg_value",             default: "", null: false
  end

  add_index "bak_tsea0_messages_cfg", ["user_id", "cfg_name"], name: "idx_user_var_name", unique: true, using: :btree

  create_table "bak_tsea0_modules", force: true do |t|
    t.string   "title",            limit: 100, default: "",    null: false
    t.string   "note",                         default: "",    null: false
    t.text     "content",                                      null: false
    t.integer  "ordering",                     default: 0,     null: false
    t.string   "position",         limit: 50,  default: "",    null: false
    t.integer  "checked_out",                  default: 0,     null: false
    t.datetime "checked_out_time",                             null: false
    t.datetime "publish_up",                                   null: false
    t.datetime "publish_down",                                 null: false
    t.boolean  "published",                    default: false, null: false
    t.string   "module",           limit: 50
    t.integer  "access",                       default: 0,     null: false
    t.integer  "showtitle",        limit: 1,   default: 1,     null: false
    t.text     "params",                                       null: false
    t.integer  "client_id",        limit: 1,   default: 0,     null: false
    t.string   "language",         limit: 7,                   null: false
  end

  add_index "bak_tsea0_modules", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_modules", ["module", "published"], name: "newsfeeds", using: :btree
  add_index "bak_tsea0_modules", ["published", "access"], name: "published", using: :btree

  create_table "bak_tsea0_modules_menu", id: false, force: true do |t|
    t.integer "moduleid", default: 0, null: false
    t.integer "menuid",   default: 0, null: false
  end

  create_table "bak_tsea0_newsfeeds", force: true do |t|
    t.integer  "catid",                        default: 0,     null: false
    t.string   "name",             limit: 100, default: "",    null: false
    t.string   "alias",                        default: "",    null: false
    t.string   "link",             limit: 200, default: "",    null: false
    t.boolean  "published",                    default: false, null: false
    t.integer  "numarticles",                  default: 1,     null: false
    t.integer  "cache_time",                   default: 3600,  null: false
    t.integer  "checked_out",                  default: 0,     null: false
    t.datetime "checked_out_time",                             null: false
    t.integer  "ordering",                     default: 0,     null: false
    t.integer  "rtl",              limit: 1,   default: 0,     null: false
    t.integer  "access",                       default: 0,     null: false
    t.string   "language",         limit: 7,   default: "",    null: false
    t.text     "params",                                       null: false
    t.datetime "created",                                      null: false
    t.integer  "created_by",                   default: 0,     null: false
    t.string   "created_by_alias",             default: "",    null: false
    t.datetime "modified",                                     null: false
    t.integer  "modified_by",                  default: 0,     null: false
    t.text     "metakey",                                      null: false
    t.text     "metadesc",                                     null: false
    t.text     "metadata",                                     null: false
    t.string   "xreference",       limit: 50,                  null: false
    t.datetime "publish_up",                                   null: false
    t.datetime "publish_down",                                 null: false
    t.text     "description",                                  null: false
    t.integer  "version",                      default: 1,     null: false
    t.integer  "hits",                         default: 0,     null: false
    t.text     "images",                                       null: false
  end

  add_index "bak_tsea0_newsfeeds", ["access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_newsfeeds", ["catid"], name: "idx_catid", using: :btree
  add_index "bak_tsea0_newsfeeds", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "bak_tsea0_newsfeeds", ["created_by"], name: "idx_createdby", using: :btree
  add_index "bak_tsea0_newsfeeds", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_newsfeeds", ["published"], name: "idx_state", using: :btree
  add_index "bak_tsea0_newsfeeds", ["xreference"], name: "idx_xreference", using: :btree

  create_table "bak_tsea0_overrider", force: true do |t|
    t.string "constant", null: false
    t.text   "string",   null: false
    t.string "file",     null: false
  end

  create_table "bak_tsea0_redirect_links", force: true do |t|
    t.string   "old_url",                               null: false
    t.string   "new_url",                               null: false
    t.string   "referer",       limit: 150,             null: false
    t.string   "comment",                               null: false
    t.integer  "hits",                      default: 0, null: false
    t.integer  "published",     limit: 1,               null: false
    t.datetime "created_date",                          null: false
    t.datetime "modified_date",                         null: false
  end

  add_index "bak_tsea0_redirect_links", ["modified_date"], name: "idx_link_modifed", using: :btree
  add_index "bak_tsea0_redirect_links", ["old_url"], name: "idx_link_old", unique: true, using: :btree

  create_table "bak_tsea0_schemas", id: false, force: true do |t|
    t.integer "extension_id",            null: false
    t.string  "version_id",   limit: 20, null: false
  end

  create_table "bak_tsea0_session", primary_key: "session_id", force: true do |t|
    t.integer "client_id", limit: 1,        default: 0,  null: false
    t.integer "guest",     limit: 1,        default: 1
    t.string  "time",      limit: 14,       default: ""
    t.text    "data",      limit: 16777215
    t.integer "userid",                     default: 0
    t.string  "username",  limit: 150,      default: ""
  end

  add_index "bak_tsea0_session", ["time"], name: "time", using: :btree
  add_index "bak_tsea0_session", ["userid"], name: "userid", using: :btree

  create_table "bak_tsea0_tags", force: true do |t|
    t.integer  "parent_id",                         default: 0,     null: false
    t.integer  "lft",                               default: 0,     null: false
    t.integer  "rgt",                               default: 0,     null: false
    t.integer  "level",                             default: 0,     null: false
    t.string   "path",                              default: "",    null: false
    t.string   "title",                                             null: false
    t.string   "alias",                             default: "",    null: false
    t.string   "note",                              default: "",    null: false
    t.text     "description",      limit: 16777215,                 null: false
    t.boolean  "published",                         default: false, null: false
    t.integer  "checked_out",                       default: 0,     null: false
    t.datetime "checked_out_time",                                  null: false
    t.integer  "access",                            default: 0,     null: false
    t.text     "params",                                            null: false
    t.string   "metadesc",         limit: 1024,                     null: false
    t.string   "metakey",          limit: 1024,                     null: false
    t.string   "metadata",         limit: 2048,                     null: false
    t.integer  "created_user_id",                   default: 0,     null: false
    t.datetime "created_time",                                      null: false
    t.string   "created_by_alias",                  default: "",    null: false
    t.integer  "modified_user_id",                  default: 0,     null: false
    t.datetime "modified_time",                                     null: false
    t.text     "images",                                            null: false
    t.text     "urls",                                              null: false
    t.integer  "hits",                              default: 0,     null: false
    t.string   "language",         limit: 7,                        null: false
    t.integer  "version",                           default: 1,     null: false
    t.datetime "publish_up",                                        null: false
    t.datetime "publish_down",                                      null: false
  end

  add_index "bak_tsea0_tags", ["access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_tags", ["alias"], name: "idx_alias", using: :btree
  add_index "bak_tsea0_tags", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "bak_tsea0_tags", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_tags", ["lft", "rgt"], name: "idx_left_right", using: :btree
  add_index "bak_tsea0_tags", ["path"], name: "idx_path", using: :btree
  add_index "bak_tsea0_tags", ["published", "access"], name: "tag_idx", using: :btree

  create_table "bak_tsea0_template_styles", force: true do |t|
    t.string  "template",  limit: 50, default: "",    null: false
    t.boolean "client_id",            default: false, null: false
    t.string  "home",      limit: 7,  default: "0",   null: false
    t.string  "title",                default: "",    null: false
    t.text    "params",                               null: false
  end

  add_index "bak_tsea0_template_styles", ["home"], name: "idx_home", using: :btree
  add_index "bak_tsea0_template_styles", ["template"], name: "idx_template", using: :btree

  create_table "bak_tsea0_ucm_base", primary_key: "ucm_id", force: true do |t|
    t.integer "ucm_item_id",     null: false
    t.integer "ucm_type_id",     null: false
    t.integer "ucm_language_id", null: false
  end

  add_index "bak_tsea0_ucm_base", ["ucm_item_id"], name: "idx_ucm_item_id", using: :btree
  add_index "bak_tsea0_ucm_base", ["ucm_language_id"], name: "idx_ucm_language_id", using: :btree
  add_index "bak_tsea0_ucm_base", ["ucm_type_id"], name: "idx_ucm_type_id", using: :btree

  create_table "bak_tsea0_ucm_content", primary_key: "core_content_id", force: true do |t|
    t.string   "core_type_alias",                           default: "",    null: false
    t.string   "core_title",                                                null: false
    t.string   "core_alias",                                default: "",    null: false
    t.text     "core_body",                limit: 16777215,                 null: false
    t.boolean  "core_state",                                default: false, null: false
    t.string   "core_checked_out_time",                     default: "",    null: false
    t.integer  "core_checked_out_user_id",                  default: 0,     null: false
    t.integer  "core_access",                               default: 0,     null: false
    t.text     "core_params",                                               null: false
    t.integer  "core_featured",            limit: 1,        default: 0,     null: false
    t.string   "core_metadata",            limit: 2048,                     null: false
    t.integer  "core_created_user_id",                      default: 0,     null: false
    t.string   "core_created_by_alias",                     default: "",    null: false
    t.datetime "core_created_time",                                         null: false
    t.integer  "core_modified_user_id",                     default: 0,     null: false
    t.datetime "core_modified_time",                                        null: false
    t.string   "core_language",            limit: 7,                        null: false
    t.datetime "core_publish_up",                                           null: false
    t.datetime "core_publish_down",                                         null: false
    t.integer  "core_content_item_id"
    t.integer  "asset_id"
    t.text     "core_images",                                               null: false
    t.text     "core_urls",                                                 null: false
    t.integer  "core_hits",                                 default: 0,     null: false
    t.integer  "core_version",                              default: 1,     null: false
    t.integer  "core_ordering",                             default: 0,     null: false
    t.text     "core_metakey",                                              null: false
    t.text     "core_metadesc",                                             null: false
    t.integer  "core_catid",                                default: 0,     null: false
    t.string   "core_xreference",          limit: 50,                       null: false
    t.integer  "core_type_id"
  end

  add_index "bak_tsea0_ucm_content", ["core_access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_alias"], name: "idx_alias", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_checked_out_user_id"], name: "idx_core_checked_out_user_id", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_created_time"], name: "idx_created_time", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_created_user_id"], name: "idx_core_created_user_id", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_modified_time"], name: "idx_modified_time", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_modified_user_id"], name: "idx_core_modified_user_id", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_state", "core_access"], name: "tag_idx", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_title"], name: "idx_title", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_type_alias"], name: "idx_content_type", using: :btree
  add_index "bak_tsea0_ucm_content", ["core_type_id"], name: "idx_core_type_id", using: :btree

  create_table "bak_tsea0_update_sites", primary_key: "update_site_id", force: true do |t|
    t.string  "name",                 limit: 100, default: ""
    t.string  "type",                 limit: 20,  default: ""
    t.text    "location",                                      null: false
    t.integer "enabled",                          default: 0
    t.integer "last_check_timestamp", limit: 8,   default: 0
  end

  create_table "bak_tsea0_update_sites_extensions", id: false, force: true do |t|
    t.integer "update_site_id", default: 0, null: false
    t.integer "extension_id",   default: 0, null: false
  end

  create_table "bak_tsea0_updates", primary_key: "update_id", force: true do |t|
    t.integer "update_site_id",             default: 0
    t.integer "extension_id",               default: 0
    t.string  "name",           limit: 100, default: ""
    t.text    "description",                             null: false
    t.string  "element",        limit: 100, default: ""
    t.string  "type",           limit: 20,  default: ""
    t.string  "folder",         limit: 20,  default: ""
    t.integer "client_id",      limit: 1,   default: 0
    t.string  "version",        limit: 10,  default: ""
    t.text    "data",                                    null: false
    t.text    "detailsurl",                              null: false
    t.text    "infourl",                                 null: false
  end

  create_table "bak_tsea0_user_notes", force: true do |t|
    t.integer  "user_id",                      default: 0,  null: false
    t.integer  "catid",                        default: 0,  null: false
    t.string   "subject",          limit: 100, default: "", null: false
    t.text     "body",                                      null: false
    t.integer  "state",            limit: 1,   default: 0,  null: false
    t.integer  "checked_out",                  default: 0,  null: false
    t.datetime "checked_out_time",                          null: false
    t.integer  "created_user_id",              default: 0,  null: false
    t.datetime "created_time",                              null: false
    t.integer  "modified_user_id",                          null: false
    t.datetime "modified_time",                             null: false
    t.datetime "review_time",                               null: false
    t.datetime "publish_up",                                null: false
    t.datetime "publish_down",                              null: false
  end

  add_index "bak_tsea0_user_notes", ["catid"], name: "idx_category_id", using: :btree
  add_index "bak_tsea0_user_notes", ["user_id"], name: "idx_user_id", using: :btree

  create_table "bak_tsea0_user_profiles", id: false, force: true do |t|
    t.integer "user_id",                               null: false
    t.string  "profile_key",   limit: 100,             null: false
    t.string  "profile_value",                         null: false
    t.integer "ordering",                  default: 0, null: false
  end

  add_index "bak_tsea0_user_profiles", ["user_id", "profile_key"], name: "idx_user_id_profile_key", unique: true, using: :btree

  create_table "bak_tsea0_user_usergroup_map", id: false, force: true do |t|
    t.integer "user_id",  default: 0, null: false
    t.integer "group_id", default: 0, null: false
  end

  create_table "bak_tsea0_usergroups", force: true do |t|
    t.integer "parent_id",             default: 0,  null: false
    t.integer "lft",                   default: 0,  null: false
    t.integer "rgt",                   default: 0,  null: false
    t.string  "title",     limit: 100, default: "", null: false
  end

  add_index "bak_tsea0_usergroups", ["lft", "rgt"], name: "idx_usergroup_nested_set_lookup", using: :btree
  add_index "bak_tsea0_usergroups", ["parent_id", "title"], name: "idx_usergroup_parent_title_lookup", unique: true, using: :btree
  add_index "bak_tsea0_usergroups", ["parent_id"], name: "idx_usergroup_adjacency_lookup", using: :btree
  add_index "bak_tsea0_usergroups", ["title"], name: "idx_usergroup_title_lookup", using: :btree

  create_table "bak_tsea0_users", force: true do |t|
    t.string   "name",                      default: "", null: false
    t.string   "username",      limit: 150, default: "", null: false
    t.string   "email",         limit: 100, default: "", null: false
    t.string   "password",      limit: 100, default: "", null: false
    t.integer  "block",         limit: 1,   default: 0,  null: false
    t.integer  "sendEmail",     limit: 1,   default: 0
    t.datetime "registerDate",                           null: false
    t.datetime "lastvisitDate",                          null: false
    t.string   "activation",    limit: 100, default: "", null: false
    t.text     "params",                                 null: false
    t.datetime "lastResetTime",                          null: false
    t.integer  "resetCount",                default: 0,  null: false
  end

  add_index "bak_tsea0_users", ["block"], name: "idx_block", using: :btree
  add_index "bak_tsea0_users", ["email"], name: "email", using: :btree
  add_index "bak_tsea0_users", ["name"], name: "idx_name", using: :btree
  add_index "bak_tsea0_users", ["username"], name: "username", using: :btree

  create_table "bak_tsea0_viewlevels", force: true do |t|
    t.string  "title",    limit: 100,  default: "", null: false
    t.integer "ordering",              default: 0,  null: false
    t.string  "rules",    limit: 5120,              null: false
  end

  add_index "bak_tsea0_viewlevels", ["title"], name: "idx_assetgroup_title_lookup", unique: true, using: :btree

  create_table "bak_tsea0_weblinks", force: true do |t|
    t.integer  "catid",                        default: 0,     null: false
    t.string   "title",            limit: 250, default: "",    null: false
    t.string   "alias",                        default: "",    null: false
    t.string   "url",              limit: 250, default: "",    null: false
    t.text     "description",                                  null: false
    t.integer  "hits",                         default: 0,     null: false
    t.boolean  "state",                        default: false, null: false
    t.integer  "checked_out",                  default: 0,     null: false
    t.datetime "checked_out_time",                             null: false
    t.integer  "ordering",                     default: 0,     null: false
    t.integer  "access",                       default: 1,     null: false
    t.text     "params",                                       null: false
    t.string   "language",         limit: 7,   default: "",    null: false
    t.datetime "created",                                      null: false
    t.integer  "created_by",                   default: 0,     null: false
    t.string   "created_by_alias",             default: "",    null: false
    t.datetime "modified",                                     null: false
    t.integer  "modified_by",                  default: 0,     null: false
    t.text     "metakey",                                      null: false
    t.text     "metadesc",                                     null: false
    t.text     "metadata",                                     null: false
    t.integer  "featured",         limit: 1,   default: 0,     null: false
    t.string   "xreference",       limit: 50,                  null: false
    t.datetime "publish_up",                                   null: false
    t.datetime "publish_down",                                 null: false
    t.integer  "version",                      default: 1,     null: false
    t.text     "images",                                       null: false
  end

  add_index "bak_tsea0_weblinks", ["access"], name: "idx_access", using: :btree
  add_index "bak_tsea0_weblinks", ["catid"], name: "idx_catid", using: :btree
  add_index "bak_tsea0_weblinks", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "bak_tsea0_weblinks", ["created_by"], name: "idx_createdby", using: :btree
  add_index "bak_tsea0_weblinks", ["featured", "catid"], name: "idx_featured_catid", using: :btree
  add_index "bak_tsea0_weblinks", ["language"], name: "idx_language", using: :btree
  add_index "bak_tsea0_weblinks", ["state"], name: "idx_state", using: :btree
  add_index "bak_tsea0_weblinks", ["xreference"], name: "idx_xreference", using: :btree

  create_table "donors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "picture_file"
    t.string   "file_location"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "texts", force: true do |t|
    t.string   "text_file"
    t.string   "file_location"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tsea0_assets", force: true do |t|
    t.integer "parent_id",              default: 0, null: false
    t.integer "lft",                    default: 0, null: false
    t.integer "rgt",                    default: 0, null: false
    t.integer "level",                              null: false
    t.string  "name",      limit: 50,               null: false
    t.string  "title",     limit: 100,              null: false
    t.string  "rules",     limit: 5120,             null: false
  end

  add_index "tsea0_assets", ["lft", "rgt"], name: "idx_lft_rgt", using: :btree
  add_index "tsea0_assets", ["name"], name: "idx_asset_name", unique: true, using: :btree
  add_index "tsea0_assets", ["parent_id"], name: "idx_parent_id", using: :btree

  create_table "tsea0_associations", id: false, force: true do |t|
    t.integer "id",                 null: false
    t.string  "context", limit: 50, null: false
    t.string  "key",     limit: 32, null: false
  end

  add_index "tsea0_associations", ["key"], name: "idx_key", using: :btree

  create_table "tsea0_banner_clients", force: true do |t|
    t.string   "name",                        default: "", null: false
    t.string   "contact",                     default: "", null: false
    t.string   "email",                       default: "", null: false
    t.text     "extrainfo",                                null: false
    t.integer  "state",             limit: 1, default: 0,  null: false
    t.integer  "checked_out",                 default: 0,  null: false
    t.datetime "checked_out_time",                         null: false
    t.text     "metakey",                                  null: false
    t.integer  "own_prefix",        limit: 1, default: 0,  null: false
    t.string   "metakey_prefix",              default: "", null: false
    t.integer  "purchase_type",     limit: 1, default: -1, null: false
    t.integer  "track_clicks",      limit: 1, default: -1, null: false
    t.integer  "track_impressions", limit: 1, default: -1, null: false
  end

  add_index "tsea0_banner_clients", ["metakey_prefix"], name: "idx_metakey_prefix", using: :btree
  add_index "tsea0_banner_clients", ["own_prefix"], name: "idx_own_prefix", using: :btree

  create_table "tsea0_banner_tracks", id: false, force: true do |t|
    t.datetime "track_date",             null: false
    t.integer  "track_type",             null: false
    t.integer  "banner_id",              null: false
    t.integer  "count",      default: 0, null: false
  end

  add_index "tsea0_banner_tracks", ["banner_id"], name: "idx_banner_id", using: :btree
  add_index "tsea0_banner_tracks", ["track_date"], name: "idx_track_date", using: :btree
  add_index "tsea0_banner_tracks", ["track_type"], name: "idx_track_type", using: :btree

  create_table "tsea0_banners", force: true do |t|
    t.integer  "cid",                            default: 0,     null: false
    t.integer  "type",                           default: 0,     null: false
    t.string   "name",                           default: "",    null: false
    t.string   "alias",                          default: "",    null: false
    t.integer  "imptotal",                       default: 0,     null: false
    t.integer  "impmade",                        default: 0,     null: false
    t.integer  "clicks",                         default: 0,     null: false
    t.string   "clickurl",          limit: 200,  default: "",    null: false
    t.integer  "state",             limit: 1,    default: 0,     null: false
    t.integer  "catid",                          default: 0,     null: false
    t.text     "description",                                    null: false
    t.string   "custombannercode",  limit: 2048,                 null: false
    t.boolean  "sticky",                         default: false, null: false
    t.integer  "ordering",                       default: 0,     null: false
    t.text     "metakey",                                        null: false
    t.text     "params",                                         null: false
    t.boolean  "own_prefix",                     default: false, null: false
    t.string   "metakey_prefix",                 default: "",    null: false
    t.integer  "purchase_type",     limit: 1,    default: -1,    null: false
    t.integer  "track_clicks",      limit: 1,    default: -1,    null: false
    t.integer  "track_impressions", limit: 1,    default: -1,    null: false
    t.integer  "checked_out",                    default: 0,     null: false
    t.datetime "checked_out_time",                               null: false
    t.datetime "publish_up",                                     null: false
    t.datetime "publish_down",                                   null: false
    t.datetime "reset",                                          null: false
    t.datetime "created",                                        null: false
    t.string   "language",          limit: 7,    default: "",    null: false
    t.integer  "created_by",                     default: 0,     null: false
    t.string   "created_by_alias",               default: "",    null: false
    t.datetime "modified",                                       null: false
    t.integer  "modified_by",                    default: 0,     null: false
    t.integer  "version",                        default: 1,     null: false
  end

  add_index "tsea0_banners", ["catid"], name: "idx_banner_catid", using: :btree
  add_index "tsea0_banners", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_banners", ["metakey_prefix"], name: "idx_metakey_prefix", using: :btree
  add_index "tsea0_banners", ["own_prefix"], name: "idx_own_prefix", using: :btree
  add_index "tsea0_banners", ["state"], name: "idx_state", using: :btree

  create_table "tsea0_categories", force: true do |t|
    t.integer  "asset_id",                          default: 0,     null: false
    t.integer  "parent_id",                         default: 0,     null: false
    t.integer  "lft",                               default: 0,     null: false
    t.integer  "rgt",                               default: 0,     null: false
    t.integer  "level",                             default: 0,     null: false
    t.string   "path",                              default: "",    null: false
    t.string   "extension",        limit: 50,       default: "",    null: false
    t.string   "title",                                             null: false
    t.string   "alias",                             default: "",    null: false
    t.string   "note",                              default: "",    null: false
    t.text     "description",      limit: 16777215,                 null: false
    t.boolean  "published",                         default: false, null: false
    t.integer  "checked_out",                       default: 0,     null: false
    t.datetime "checked_out_time",                                  null: false
    t.integer  "access",                            default: 0,     null: false
    t.text     "params",                                            null: false
    t.string   "metadesc",         limit: 1024,                     null: false
    t.string   "metakey",          limit: 1024,                     null: false
    t.string   "metadata",         limit: 2048,                     null: false
    t.integer  "created_user_id",                   default: 0,     null: false
    t.datetime "created_time",                                      null: false
    t.integer  "modified_user_id",                  default: 0,     null: false
    t.datetime "modified_time",                                     null: false
    t.integer  "hits",                              default: 0,     null: false
    t.string   "language",         limit: 7,                        null: false
    t.integer  "version",                           default: 1,     null: false
  end

  add_index "tsea0_categories", ["access"], name: "idx_access", using: :btree
  add_index "tsea0_categories", ["alias"], name: "idx_alias", using: :btree
  add_index "tsea0_categories", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "tsea0_categories", ["extension", "published", "access"], name: "cat_idx", using: :btree
  add_index "tsea0_categories", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_categories", ["lft", "rgt"], name: "idx_left_right", using: :btree
  add_index "tsea0_categories", ["path"], name: "idx_path", using: :btree

  create_table "tsea0_contact_details", force: true do |t|
    t.string   "name",                              default: "",    null: false
    t.string   "alias",                             default: "",    null: false
    t.string   "con_position"
    t.text     "address"
    t.string   "suburb",           limit: 100
    t.string   "state",            limit: 100
    t.string   "country",          limit: 100
    t.string   "postcode",         limit: 100
    t.string   "telephone"
    t.string   "fax"
    t.text     "misc",             limit: 16777215
    t.string   "image"
    t.string   "email_to"
    t.boolean  "default_con",                       default: false, null: false
    t.boolean  "published",                         default: false, null: false
    t.integer  "checked_out",                       default: 0,     null: false
    t.datetime "checked_out_time",                                  null: false
    t.integer  "ordering",                          default: 0,     null: false
    t.text     "params",                                            null: false
    t.integer  "user_id",                           default: 0,     null: false
    t.integer  "catid",                             default: 0,     null: false
    t.integer  "access",                            default: 0,     null: false
    t.string   "mobile",                            default: "",    null: false
    t.string   "webpage",                           default: "",    null: false
    t.string   "sortname1",                                         null: false
    t.string   "sortname2",                                         null: false
    t.string   "sortname3",                                         null: false
    t.string   "language",         limit: 7,                        null: false
    t.datetime "created",                                           null: false
    t.integer  "created_by",                        default: 0,     null: false
    t.string   "created_by_alias",                  default: "",    null: false
    t.datetime "modified",                                          null: false
    t.integer  "modified_by",                       default: 0,     null: false
    t.text     "metakey",                                           null: false
    t.text     "metadesc",                                          null: false
    t.text     "metadata",                                          null: false
    t.integer  "featured",         limit: 1,        default: 0,     null: false
    t.string   "xreference",       limit: 50,                       null: false
    t.datetime "publish_up",                                        null: false
    t.datetime "publish_down",                                      null: false
    t.integer  "version",                           default: 1,     null: false
    t.integer  "hits",                              default: 0,     null: false
  end

  add_index "tsea0_contact_details", ["access"], name: "idx_access", using: :btree
  add_index "tsea0_contact_details", ["catid"], name: "idx_catid", using: :btree
  add_index "tsea0_contact_details", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "tsea0_contact_details", ["created_by"], name: "idx_createdby", using: :btree
  add_index "tsea0_contact_details", ["featured", "catid"], name: "idx_featured_catid", using: :btree
  add_index "tsea0_contact_details", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_contact_details", ["published"], name: "idx_state", using: :btree
  add_index "tsea0_contact_details", ["xreference"], name: "idx_xreference", using: :btree

  create_table "tsea0_content", force: true do |t|
    t.integer  "asset_id",                          default: 0,  null: false
    t.string   "title",                             default: "", null: false
    t.string   "alias",                             default: "", null: false
    t.text     "introtext",        limit: 16777215,              null: false
    t.text     "fulltext",         limit: 16777215,              null: false
    t.integer  "state",            limit: 1,        default: 0,  null: false
    t.integer  "catid",                             default: 0,  null: false
    t.datetime "created",                                        null: false
    t.integer  "created_by",                        default: 0,  null: false
    t.string   "created_by_alias",                  default: "", null: false
    t.datetime "modified",                                       null: false
    t.integer  "modified_by",                       default: 0,  null: false
    t.integer  "checked_out",                       default: 0,  null: false
    t.datetime "checked_out_time",                               null: false
    t.datetime "publish_up",                                     null: false
    t.datetime "publish_down",                                   null: false
    t.text     "images",                                         null: false
    t.text     "urls",                                           null: false
    t.string   "attribs",          limit: 5120,                  null: false
    t.integer  "version",                           default: 1,  null: false
    t.integer  "ordering",                          default: 0,  null: false
    t.text     "metakey",                                        null: false
    t.text     "metadesc",                                       null: false
    t.integer  "access",                            default: 0,  null: false
    t.integer  "hits",                              default: 0,  null: false
    t.text     "metadata",                                       null: false
    t.integer  "featured",         limit: 1,        default: 0,  null: false
    t.string   "language",         limit: 7,                     null: false
    t.string   "xreference",       limit: 50,                    null: false
  end

  add_index "tsea0_content", ["access"], name: "idx_access", using: :btree
  add_index "tsea0_content", ["catid"], name: "idx_catid", using: :btree
  add_index "tsea0_content", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "tsea0_content", ["created_by"], name: "idx_createdby", using: :btree
  add_index "tsea0_content", ["featured", "catid"], name: "idx_featured_catid", using: :btree
  add_index "tsea0_content", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_content", ["state"], name: "idx_state", using: :btree
  add_index "tsea0_content", ["xreference"], name: "idx_xreference", using: :btree

  create_table "tsea0_content_frontpage", primary_key: "content_id", force: true do |t|
    t.integer "ordering", default: 0, null: false
  end

  create_table "tsea0_content_rating", primary_key: "content_id", force: true do |t|
    t.integer "rating_sum",              default: 0,  null: false
    t.integer "rating_count",            default: 0,  null: false
    t.string  "lastip",       limit: 50, default: "", null: false
  end

  create_table "tsea0_content_types", primary_key: "type_id", force: true do |t|
    t.string "type_title",     default: "", null: false
    t.string "type_alias",     default: "", null: false
    t.string "table",          default: "", null: false
    t.text   "rules",                       null: false
    t.text   "field_mappings",              null: false
    t.string "router",         default: "", null: false
  end

  add_index "tsea0_content_types", ["type_alias"], name: "idx_alias", using: :btree

  create_table "tsea0_contentitem_tag_map", id: false, force: true do |t|
    t.string    "type_alias",                default: "", null: false
    t.integer   "core_content_id",                        null: false
    t.integer   "content_item_id",                        null: false
    t.integer   "tag_id",                                 null: false
    t.timestamp "tag_date",                               null: false
    t.integer   "type_id",         limit: 3,              null: false
  end

  add_index "tsea0_contentitem_tag_map", ["core_content_id"], name: "idx_core_content_id", using: :btree
  add_index "tsea0_contentitem_tag_map", ["tag_date", "tag_id"], name: "idx_date_id", using: :btree
  add_index "tsea0_contentitem_tag_map", ["tag_id", "type_id"], name: "idx_tag_type", using: :btree
  add_index "tsea0_contentitem_tag_map", ["tag_id"], name: "idx_tag", using: :btree
  add_index "tsea0_contentitem_tag_map", ["type_id", "content_item_id", "tag_id"], name: "uc_ItemnameTagid", unique: true, using: :btree
  add_index "tsea0_contentitem_tag_map", ["type_id"], name: "idx_type", using: :btree

  create_table "tsea0_core_log_searches", id: false, force: true do |t|
    t.string  "search_term", limit: 128, default: "", null: false
    t.integer "hits",                    default: 0,  null: false
  end

  create_table "tsea0_extensions", primary_key: "extension_id", force: true do |t|
    t.string   "name",             limit: 100,             null: false
    t.string   "type",             limit: 20,              null: false
    t.string   "element",          limit: 100,             null: false
    t.string   "folder",           limit: 100,             null: false
    t.integer  "client_id",        limit: 1,               null: false
    t.integer  "enabled",          limit: 1,   default: 1, null: false
    t.integer  "access",                       default: 1, null: false
    t.integer  "protected",        limit: 1,   default: 0, null: false
    t.text     "manifest_cache",                           null: false
    t.text     "params",                                   null: false
    t.text     "custom_data",                              null: false
    t.text     "system_data",                              null: false
    t.integer  "checked_out",                  default: 0, null: false
    t.datetime "checked_out_time",                         null: false
    t.integer  "ordering",                     default: 0
    t.integer  "state",                        default: 0
  end

  add_index "tsea0_extensions", ["element", "client_id"], name: "element_clientid", using: :btree
  add_index "tsea0_extensions", ["element", "folder", "client_id"], name: "element_folder_clientid", using: :btree
  add_index "tsea0_extensions", ["type", "element", "folder", "client_id"], name: "extension", using: :btree

  create_table "tsea0_finder_filters", primary_key: "filter_id", force: true do |t|
    t.string   "title",                                            null: false
    t.string   "alias",                                            null: false
    t.boolean  "state",                             default: true, null: false
    t.datetime "created",                                          null: false
    t.integer  "created_by",                                       null: false
    t.string   "created_by_alias",                                 null: false
    t.datetime "modified",                                         null: false
    t.integer  "modified_by",                       default: 0,    null: false
    t.integer  "checked_out",                       default: 0,    null: false
    t.datetime "checked_out_time",                                 null: false
    t.integer  "map_count",                         default: 0,    null: false
    t.text     "data",                                             null: false
    t.text     "params",           limit: 16777215
  end

  create_table "tsea0_finder_links", primary_key: "link_id", force: true do |t|
    t.string   "url",                                                null: false
    t.string   "route",                                              null: false
    t.string   "title"
    t.string   "description"
    t.datetime "indexdate",                                          null: false
    t.string   "md5sum",             limit: 32
    t.boolean  "published",                           default: true, null: false
    t.integer  "state",                               default: 1
    t.integer  "access",                              default: 0
    t.string   "language",           limit: 8,                       null: false
    t.datetime "publish_start_date",                                 null: false
    t.datetime "publish_end_date",                                   null: false
    t.datetime "start_date",                                         null: false
    t.datetime "end_date",                                           null: false
    t.float    "list_price",                          default: 0.0,  null: false
    t.float    "sale_price",                          default: 0.0,  null: false
    t.integer  "type_id",                                            null: false
    t.binary   "object",             limit: 16777215,                null: false
  end

  add_index "tsea0_finder_links", ["md5sum"], name: "idx_md5", using: :btree
  add_index "tsea0_finder_links", ["published", "state", "access", "publish_start_date", "publish_end_date", "list_price"], name: "idx_published_list", using: :btree
  add_index "tsea0_finder_links", ["published", "state", "access", "publish_start_date", "publish_end_date", "sale_price"], name: "idx_published_sale", using: :btree
  add_index "tsea0_finder_links", ["title"], name: "idx_title", using: :btree
  add_index "tsea0_finder_links", ["type_id"], name: "idx_type", using: :btree
  add_index "tsea0_finder_links", ["url"], name: "idx_url", length: {"url"=>75}, using: :btree

  create_table "tsea0_finder_links_terms0", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms0", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms0", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms1", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms1", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms1", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms2", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms2", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms2", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms3", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms3", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms3", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms4", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms4", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms4", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms5", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms5", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms5", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms6", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms6", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms6", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms7", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms7", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms7", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms8", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms8", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms8", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_terms9", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_terms9", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_terms9", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_termsa", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_termsa", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_termsa", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_termsb", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_termsb", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_termsb", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_termsc", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_termsc", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_termsc", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_termsd", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_termsd", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_termsd", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_termse", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_termse", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_termse", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_links_termsf", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "term_id", null: false
    t.float   "weight",  null: false
  end

  add_index "tsea0_finder_links_termsf", ["link_id", "term_id", "weight"], name: "idx_link_term_weight", using: :btree
  add_index "tsea0_finder_links_termsf", ["term_id", "weight"], name: "idx_term_weight", using: :btree

  create_table "tsea0_finder_taxonomy", force: true do |t|
    t.integer "parent_id", default: 0,     null: false
    t.string  "title",                     null: false
    t.boolean "state",     default: true,  null: false
    t.boolean "access",    default: false, null: false
    t.boolean "ordering",  default: false, null: false
  end

  add_index "tsea0_finder_taxonomy", ["access"], name: "access", using: :btree
  add_index "tsea0_finder_taxonomy", ["ordering"], name: "ordering", using: :btree
  add_index "tsea0_finder_taxonomy", ["parent_id", "state", "access"], name: "idx_parent_published", using: :btree
  add_index "tsea0_finder_taxonomy", ["parent_id"], name: "parent_id", using: :btree
  add_index "tsea0_finder_taxonomy", ["state"], name: "state", using: :btree

  create_table "tsea0_finder_taxonomy_map", id: false, force: true do |t|
    t.integer "link_id", null: false
    t.integer "node_id", null: false
  end

  add_index "tsea0_finder_taxonomy_map", ["link_id"], name: "link_id", using: :btree
  add_index "tsea0_finder_taxonomy_map", ["node_id"], name: "node_id", using: :btree

  create_table "tsea0_finder_terms", primary_key: "term_id", force: true do |t|
    t.string  "term",     limit: 75,                 null: false
    t.string  "stem",     limit: 75,                 null: false
    t.boolean "common",              default: false, null: false
    t.boolean "phrase",              default: false, null: false
    t.float   "weight",              default: 0.0,   null: false
    t.string  "soundex",  limit: 75,                 null: false
    t.integer "links",               default: 0,     null: false
    t.string  "language", limit: 3,  default: "",    null: false
  end

  add_index "tsea0_finder_terms", ["soundex", "phrase"], name: "idx_soundex_phrase", using: :btree
  add_index "tsea0_finder_terms", ["stem", "phrase"], name: "idx_stem_phrase", using: :btree
  add_index "tsea0_finder_terms", ["term", "phrase"], name: "idx_term_phrase", using: :btree
  add_index "tsea0_finder_terms", ["term"], name: "idx_term", unique: true, using: :btree

  create_table "tsea0_finder_terms_common", id: false, force: true do |t|
    t.string "term",     limit: 75, null: false
    t.string "language", limit: 3,  null: false
  end

  add_index "tsea0_finder_terms_common", ["language"], name: "idx_lang", using: :btree
  add_index "tsea0_finder_terms_common", ["term", "language"], name: "idx_word_lang", using: :btree

  create_table "tsea0_finder_tokens", id: false, force: true do |t|
    t.string  "term",     limit: 75,                 null: false
    t.string  "stem",     limit: 75,                 null: false
    t.boolean "common",              default: false, null: false
    t.boolean "phrase",              default: false, null: false
    t.float   "weight",              default: 1.0,   null: false
    t.boolean "context",             default: false, null: false
    t.string  "language", limit: 3,  default: "",    null: false
  end

  add_index "tsea0_finder_tokens", ["context"], name: "idx_context", using: :hash
  add_index "tsea0_finder_tokens", ["term"], name: "idx_word", using: :hash

  create_table "tsea0_finder_tokens_aggregate", id: false, force: true do |t|
    t.integer "term_id",                                   null: false
    t.string  "map_suffix",     limit: 1,                  null: false
    t.string  "term",           limit: 75,                 null: false
    t.string  "stem",           limit: 75,                 null: false
    t.boolean "common",                    default: false, null: false
    t.boolean "phrase",                    default: false, null: false
    t.float   "term_weight",                               null: false
    t.boolean "context",                   default: false, null: false
    t.float   "context_weight",                            null: false
    t.float   "total_weight",                              null: false
    t.string  "language",       limit: 3,  default: "",    null: false
  end

  add_index "tsea0_finder_tokens_aggregate", ["term"], name: "token", using: :hash
  add_index "tsea0_finder_tokens_aggregate", ["term_id"], name: "keyword_id", using: :hash

  create_table "tsea0_finder_types", force: true do |t|
    t.string "title", limit: 100, null: false
    t.string "mime",  limit: 100, null: false
  end

  add_index "tsea0_finder_types", ["title"], name: "title", unique: true, using: :btree

  create_table "tsea0_languages", primary_key: "lang_id", force: true do |t|
    t.string  "lang_code",    limit: 7,                 null: false
    t.string  "title",        limit: 50,                null: false
    t.string  "title_native", limit: 50,                null: false
    t.string  "sef",          limit: 50,                null: false
    t.string  "image",        limit: 50,                null: false
    t.string  "description",  limit: 512,               null: false
    t.text    "metakey",                                null: false
    t.text    "metadesc",                               null: false
    t.string  "sitename",     limit: 1024, default: "", null: false
    t.integer "published",                 default: 0,  null: false
    t.integer "access",                    default: 0,  null: false
    t.integer "ordering",                  default: 0,  null: false
  end

  add_index "tsea0_languages", ["access"], name: "idx_access", using: :btree
  add_index "tsea0_languages", ["image"], name: "idx_image", unique: true, using: :btree
  add_index "tsea0_languages", ["lang_code"], name: "idx_langcode", unique: true, using: :btree
  add_index "tsea0_languages", ["ordering"], name: "idx_ordering", using: :btree
  add_index "tsea0_languages", ["sef"], name: "idx_sef", unique: true, using: :btree

  create_table "tsea0_menu", force: true do |t|
    t.string    "menutype",          limit: 24,                null: false
    t.string    "title",                                       null: false
    t.string    "alias",                                       null: false
    t.string    "note",                           default: "", null: false
    t.string    "path",              limit: 1024,              null: false
    t.string    "link",              limit: 1024,              null: false
    t.string    "type",              limit: 16,                null: false
    t.integer   "published",         limit: 1,    default: 0,  null: false
    t.integer   "parent_id",                      default: 1,  null: false
    t.integer   "level",                          default: 0,  null: false
    t.integer   "component_id",                   default: 0,  null: false
    t.integer   "checked_out",                    default: 0,  null: false
    t.timestamp "checked_out_time",                            null: false
    t.integer   "browserNav",        limit: 1,    default: 0,  null: false
    t.integer   "access",                         default: 0,  null: false
    t.string    "img",                                         null: false
    t.integer   "template_style_id",              default: 0,  null: false
    t.text      "params",                                      null: false
    t.integer   "lft",                            default: 0,  null: false
    t.integer   "rgt",                            default: 0,  null: false
    t.integer   "home",              limit: 1,    default: 0,  null: false
    t.string    "language",          limit: 7,    default: "", null: false
    t.integer   "client_id",         limit: 1,    default: 0,  null: false
  end

  add_index "tsea0_menu", ["alias"], name: "idx_alias", using: :btree
  add_index "tsea0_menu", ["client_id", "parent_id", "alias", "language"], name: "idx_client_id_parent_id_alias_language", unique: true, using: :btree
  add_index "tsea0_menu", ["component_id", "menutype", "published", "access"], name: "idx_componentid", using: :btree
  add_index "tsea0_menu", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_menu", ["lft", "rgt"], name: "idx_left_right", using: :btree
  add_index "tsea0_menu", ["menutype"], name: "idx_menutype", using: :btree
  add_index "tsea0_menu", ["path"], name: "idx_path", length: {"path"=>255}, using: :btree

  create_table "tsea0_menu_types", force: true do |t|
    t.string "menutype",    limit: 24,              null: false
    t.string "title",       limit: 48,              null: false
    t.string "description",            default: "", null: false
  end

  add_index "tsea0_menu_types", ["menutype"], name: "idx_menutype", unique: true, using: :btree

  create_table "tsea0_messages", primary_key: "message_id", force: true do |t|
    t.integer  "user_id_from",           default: 0,     null: false
    t.integer  "user_id_to",             default: 0,     null: false
    t.integer  "folder_id",    limit: 1, default: 0,     null: false
    t.datetime "date_time",                              null: false
    t.boolean  "state",                  default: false, null: false
    t.boolean  "priority",               default: false, null: false
    t.string   "subject",                default: "",    null: false
    t.text     "message",                                null: false
  end

  add_index "tsea0_messages", ["user_id_to", "state"], name: "useridto_state", using: :btree

  create_table "tsea0_messages_cfg", id: false, force: true do |t|
    t.integer "user_id",               default: 0,  null: false
    t.string  "cfg_name",  limit: 100, default: "", null: false
    t.string  "cfg_value",             default: "", null: false
  end

  add_index "tsea0_messages_cfg", ["user_id", "cfg_name"], name: "idx_user_var_name", unique: true, using: :btree

  create_table "tsea0_modules", force: true do |t|
    t.string   "title",            limit: 100, default: "",    null: false
    t.string   "note",                         default: "",    null: false
    t.text     "content",                                      null: false
    t.integer  "ordering",                     default: 0,     null: false
    t.string   "position",         limit: 50,  default: "",    null: false
    t.integer  "checked_out",                  default: 0,     null: false
    t.datetime "checked_out_time",                             null: false
    t.datetime "publish_up",                                   null: false
    t.datetime "publish_down",                                 null: false
    t.boolean  "published",                    default: false, null: false
    t.string   "module",           limit: 50
    t.integer  "access",                       default: 0,     null: false
    t.integer  "showtitle",        limit: 1,   default: 1,     null: false
    t.text     "params",                                       null: false
    t.integer  "client_id",        limit: 1,   default: 0,     null: false
    t.string   "language",         limit: 7,                   null: false
  end

  add_index "tsea0_modules", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_modules", ["module", "published"], name: "newsfeeds", using: :btree
  add_index "tsea0_modules", ["published", "access"], name: "published", using: :btree

  create_table "tsea0_modules_menu", id: false, force: true do |t|
    t.integer "moduleid", default: 0, null: false
    t.integer "menuid",   default: 0, null: false
  end

  create_table "tsea0_newsfeeds", force: true do |t|
    t.integer  "catid",                        default: 0,     null: false
    t.string   "name",             limit: 100, default: "",    null: false
    t.string   "alias",                        default: "",    null: false
    t.string   "link",             limit: 200, default: "",    null: false
    t.boolean  "published",                    default: false, null: false
    t.integer  "numarticles",                  default: 1,     null: false
    t.integer  "cache_time",                   default: 3600,  null: false
    t.integer  "checked_out",                  default: 0,     null: false
    t.datetime "checked_out_time",                             null: false
    t.integer  "ordering",                     default: 0,     null: false
    t.integer  "rtl",              limit: 1,   default: 0,     null: false
    t.integer  "access",                       default: 0,     null: false
    t.string   "language",         limit: 7,   default: "",    null: false
    t.text     "params",                                       null: false
    t.datetime "created",                                      null: false
    t.integer  "created_by",                   default: 0,     null: false
    t.string   "created_by_alias",             default: "",    null: false
    t.datetime "modified",                                     null: false
    t.integer  "modified_by",                  default: 0,     null: false
    t.text     "metakey",                                      null: false
    t.text     "metadesc",                                     null: false
    t.text     "metadata",                                     null: false
    t.string   "xreference",       limit: 50,                  null: false
    t.datetime "publish_up",                                   null: false
    t.datetime "publish_down",                                 null: false
    t.text     "description",                                  null: false
    t.integer  "version",                      default: 1,     null: false
    t.integer  "hits",                         default: 0,     null: false
    t.text     "images",                                       null: false
  end

  add_index "tsea0_newsfeeds", ["access"], name: "idx_access", using: :btree
  add_index "tsea0_newsfeeds", ["catid"], name: "idx_catid", using: :btree
  add_index "tsea0_newsfeeds", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "tsea0_newsfeeds", ["created_by"], name: "idx_createdby", using: :btree
  add_index "tsea0_newsfeeds", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_newsfeeds", ["published"], name: "idx_state", using: :btree
  add_index "tsea0_newsfeeds", ["xreference"], name: "idx_xreference", using: :btree

  create_table "tsea0_overrider", force: true do |t|
    t.string "constant", null: false
    t.text   "string",   null: false
    t.string "file",     null: false
  end

  create_table "tsea0_redirect_links", force: true do |t|
    t.string   "old_url",                               null: false
    t.string   "new_url",                               null: false
    t.string   "referer",       limit: 150,             null: false
    t.string   "comment",                               null: false
    t.integer  "hits",                      default: 0, null: false
    t.integer  "published",     limit: 1,               null: false
    t.datetime "created_date",                          null: false
    t.datetime "modified_date",                         null: false
  end

  add_index "tsea0_redirect_links", ["modified_date"], name: "idx_link_modifed", using: :btree
  add_index "tsea0_redirect_links", ["old_url"], name: "idx_link_old", unique: true, using: :btree

  create_table "tsea0_schemas", id: false, force: true do |t|
    t.integer "extension_id",            null: false
    t.string  "version_id",   limit: 20, null: false
  end

  create_table "tsea0_session", primary_key: "session_id", force: true do |t|
    t.integer "client_id", limit: 1,        default: 0,  null: false
    t.integer "guest",     limit: 1,        default: 1
    t.string  "time",      limit: 14,       default: ""
    t.text    "data",      limit: 16777215
    t.integer "userid",                     default: 0
    t.string  "username",  limit: 150,      default: ""
  end

  add_index "tsea0_session", ["time"], name: "time", using: :btree
  add_index "tsea0_session", ["userid"], name: "userid", using: :btree

  create_table "tsea0_tags", force: true do |t|
    t.integer  "parent_id",                         default: 0,     null: false
    t.integer  "lft",                               default: 0,     null: false
    t.integer  "rgt",                               default: 0,     null: false
    t.integer  "level",                             default: 0,     null: false
    t.string   "path",                              default: "",    null: false
    t.string   "title",                                             null: false
    t.string   "alias",                             default: "",    null: false
    t.string   "note",                              default: "",    null: false
    t.text     "description",      limit: 16777215,                 null: false
    t.boolean  "published",                         default: false, null: false
    t.integer  "checked_out",                       default: 0,     null: false
    t.datetime "checked_out_time",                                  null: false
    t.integer  "access",                            default: 0,     null: false
    t.text     "params",                                            null: false
    t.string   "metadesc",         limit: 1024,                     null: false
    t.string   "metakey",          limit: 1024,                     null: false
    t.string   "metadata",         limit: 2048,                     null: false
    t.integer  "created_user_id",                   default: 0,     null: false
    t.datetime "created_time",                                      null: false
    t.string   "created_by_alias",                  default: "",    null: false
    t.integer  "modified_user_id",                  default: 0,     null: false
    t.datetime "modified_time",                                     null: false
    t.text     "images",                                            null: false
    t.text     "urls",                                              null: false
    t.integer  "hits",                              default: 0,     null: false
    t.string   "language",         limit: 7,                        null: false
    t.integer  "version",                           default: 1,     null: false
    t.datetime "publish_up",                                        null: false
    t.datetime "publish_down",                                      null: false
  end

  add_index "tsea0_tags", ["access"], name: "idx_access", using: :btree
  add_index "tsea0_tags", ["alias"], name: "idx_alias", using: :btree
  add_index "tsea0_tags", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "tsea0_tags", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_tags", ["lft", "rgt"], name: "idx_left_right", using: :btree
  add_index "tsea0_tags", ["path"], name: "idx_path", using: :btree
  add_index "tsea0_tags", ["published", "access"], name: "tag_idx", using: :btree

  create_table "tsea0_template_styles", force: true do |t|
    t.string  "template",  limit: 50, default: "",    null: false
    t.boolean "client_id",            default: false, null: false
    t.string  "home",      limit: 7,  default: "0",   null: false
    t.string  "title",                default: "",    null: false
    t.text    "params",                               null: false
  end

  add_index "tsea0_template_styles", ["home"], name: "idx_home", using: :btree
  add_index "tsea0_template_styles", ["template"], name: "idx_template", using: :btree

  create_table "tsea0_ucm_base", primary_key: "ucm_id", force: true do |t|
    t.integer "ucm_item_id",     null: false
    t.integer "ucm_type_id",     null: false
    t.integer "ucm_language_id", null: false
  end

  add_index "tsea0_ucm_base", ["ucm_item_id"], name: "idx_ucm_item_id", using: :btree
  add_index "tsea0_ucm_base", ["ucm_language_id"], name: "idx_ucm_language_id", using: :btree
  add_index "tsea0_ucm_base", ["ucm_type_id"], name: "idx_ucm_type_id", using: :btree

  create_table "tsea0_ucm_content", primary_key: "core_content_id", force: true do |t|
    t.string   "core_type_alias",                           default: "",    null: false
    t.string   "core_title",                                                null: false
    t.string   "core_alias",                                default: "",    null: false
    t.text     "core_body",                limit: 16777215,                 null: false
    t.boolean  "core_state",                                default: false, null: false
    t.string   "core_checked_out_time",                     default: "",    null: false
    t.integer  "core_checked_out_user_id",                  default: 0,     null: false
    t.integer  "core_access",                               default: 0,     null: false
    t.text     "core_params",                                               null: false
    t.integer  "core_featured",            limit: 1,        default: 0,     null: false
    t.string   "core_metadata",            limit: 2048,                     null: false
    t.integer  "core_created_user_id",                      default: 0,     null: false
    t.string   "core_created_by_alias",                     default: "",    null: false
    t.datetime "core_created_time",                                         null: false
    t.integer  "core_modified_user_id",                     default: 0,     null: false
    t.datetime "core_modified_time",                                        null: false
    t.string   "core_language",            limit: 7,                        null: false
    t.datetime "core_publish_up",                                           null: false
    t.datetime "core_publish_down",                                         null: false
    t.integer  "core_content_item_id"
    t.integer  "asset_id"
    t.text     "core_images",                                               null: false
    t.text     "core_urls",                                                 null: false
    t.integer  "core_hits",                                 default: 0,     null: false
    t.integer  "core_version",                              default: 1,     null: false
    t.integer  "core_ordering",                             default: 0,     null: false
    t.text     "core_metakey",                                              null: false
    t.text     "core_metadesc",                                             null: false
    t.integer  "core_catid",                                default: 0,     null: false
    t.string   "core_xreference",          limit: 50,                       null: false
    t.integer  "core_type_id"
  end

  add_index "tsea0_ucm_content", ["core_access"], name: "idx_access", using: :btree
  add_index "tsea0_ucm_content", ["core_alias"], name: "idx_alias", using: :btree
  add_index "tsea0_ucm_content", ["core_checked_out_user_id"], name: "idx_core_checked_out_user_id", using: :btree
  add_index "tsea0_ucm_content", ["core_created_time"], name: "idx_created_time", using: :btree
  add_index "tsea0_ucm_content", ["core_created_user_id"], name: "idx_core_created_user_id", using: :btree
  add_index "tsea0_ucm_content", ["core_language"], name: "idx_language", using: :btree
  add_index "tsea0_ucm_content", ["core_modified_time"], name: "idx_modified_time", using: :btree
  add_index "tsea0_ucm_content", ["core_modified_user_id"], name: "idx_core_modified_user_id", using: :btree
  add_index "tsea0_ucm_content", ["core_state", "core_access"], name: "tag_idx", using: :btree
  add_index "tsea0_ucm_content", ["core_title"], name: "idx_title", using: :btree
  add_index "tsea0_ucm_content", ["core_type_alias"], name: "idx_content_type", using: :btree
  add_index "tsea0_ucm_content", ["core_type_id"], name: "idx_core_type_id", using: :btree

  create_table "tsea0_update_sites", primary_key: "update_site_id", force: true do |t|
    t.string  "name",                 limit: 100, default: ""
    t.string  "type",                 limit: 20,  default: ""
    t.text    "location",                                      null: false
    t.integer "enabled",                          default: 0
    t.integer "last_check_timestamp", limit: 8,   default: 0
  end

  create_table "tsea0_update_sites_extensions", id: false, force: true do |t|
    t.integer "update_site_id", default: 0, null: false
    t.integer "extension_id",   default: 0, null: false
  end

  create_table "tsea0_updates", primary_key: "update_id", force: true do |t|
    t.integer "update_site_id",             default: 0
    t.integer "extension_id",               default: 0
    t.string  "name",           limit: 100, default: ""
    t.text    "description",                             null: false
    t.string  "element",        limit: 100, default: ""
    t.string  "type",           limit: 20,  default: ""
    t.string  "folder",         limit: 20,  default: ""
    t.integer "client_id",      limit: 1,   default: 0
    t.string  "version",        limit: 10,  default: ""
    t.text    "data",                                    null: false
    t.text    "detailsurl",                              null: false
    t.text    "infourl",                                 null: false
  end

  create_table "tsea0_user_notes", force: true do |t|
    t.integer  "user_id",                      default: 0,  null: false
    t.integer  "catid",                        default: 0,  null: false
    t.string   "subject",          limit: 100, default: "", null: false
    t.text     "body",                                      null: false
    t.integer  "state",            limit: 1,   default: 0,  null: false
    t.integer  "checked_out",                  default: 0,  null: false
    t.datetime "checked_out_time",                          null: false
    t.integer  "created_user_id",              default: 0,  null: false
    t.datetime "created_time",                              null: false
    t.integer  "modified_user_id",                          null: false
    t.datetime "modified_time",                             null: false
    t.datetime "review_time",                               null: false
    t.datetime "publish_up",                                null: false
    t.datetime "publish_down",                              null: false
  end

  add_index "tsea0_user_notes", ["catid"], name: "idx_category_id", using: :btree
  add_index "tsea0_user_notes", ["user_id"], name: "idx_user_id", using: :btree

  create_table "tsea0_user_profiles", id: false, force: true do |t|
    t.integer "user_id",                               null: false
    t.string  "profile_key",   limit: 100,             null: false
    t.string  "profile_value",                         null: false
    t.integer "ordering",                  default: 0, null: false
  end

  add_index "tsea0_user_profiles", ["user_id", "profile_key"], name: "idx_user_id_profile_key", unique: true, using: :btree

  create_table "tsea0_user_usergroup_map", id: false, force: true do |t|
    t.integer "user_id",  default: 0, null: false
    t.integer "group_id", default: 0, null: false
  end

  create_table "tsea0_usergroups", force: true do |t|
    t.integer "parent_id",             default: 0,  null: false
    t.integer "lft",                   default: 0,  null: false
    t.integer "rgt",                   default: 0,  null: false
    t.string  "title",     limit: 100, default: "", null: false
  end

  add_index "tsea0_usergroups", ["lft", "rgt"], name: "idx_usergroup_nested_set_lookup", using: :btree
  add_index "tsea0_usergroups", ["parent_id", "title"], name: "idx_usergroup_parent_title_lookup", unique: true, using: :btree
  add_index "tsea0_usergroups", ["parent_id"], name: "idx_usergroup_adjacency_lookup", using: :btree
  add_index "tsea0_usergroups", ["title"], name: "idx_usergroup_title_lookup", using: :btree

  create_table "tsea0_users", force: true do |t|
    t.string   "name",                      default: "", null: false
    t.string   "username",      limit: 150, default: "", null: false
    t.string   "email",         limit: 100, default: "", null: false
    t.string   "password",      limit: 100, default: "", null: false
    t.integer  "block",         limit: 1,   default: 0,  null: false
    t.integer  "sendEmail",     limit: 1,   default: 0
    t.datetime "registerDate",                           null: false
    t.datetime "lastvisitDate",                          null: false
    t.string   "activation",    limit: 100, default: "", null: false
    t.text     "params",                                 null: false
    t.datetime "lastResetTime",                          null: false
    t.integer  "resetCount",                default: 0,  null: false
  end

  add_index "tsea0_users", ["block"], name: "idx_block", using: :btree
  add_index "tsea0_users", ["email"], name: "email", using: :btree
  add_index "tsea0_users", ["name"], name: "idx_name", using: :btree
  add_index "tsea0_users", ["username"], name: "username", using: :btree

  create_table "tsea0_viewlevels", force: true do |t|
    t.string  "title",    limit: 100,  default: "", null: false
    t.integer "ordering",              default: 0,  null: false
    t.string  "rules",    limit: 5120,              null: false
  end

  add_index "tsea0_viewlevels", ["title"], name: "idx_assetgroup_title_lookup", unique: true, using: :btree

  create_table "tsea0_weblinks", force: true do |t|
    t.integer  "catid",                        default: 0,     null: false
    t.string   "title",            limit: 250, default: "",    null: false
    t.string   "alias",                        default: "",    null: false
    t.string   "url",              limit: 250, default: "",    null: false
    t.text     "description",                                  null: false
    t.integer  "hits",                         default: 0,     null: false
    t.boolean  "state",                        default: false, null: false
    t.integer  "checked_out",                  default: 0,     null: false
    t.datetime "checked_out_time",                             null: false
    t.integer  "ordering",                     default: 0,     null: false
    t.integer  "access",                       default: 1,     null: false
    t.text     "params",                                       null: false
    t.string   "language",         limit: 7,   default: "",    null: false
    t.datetime "created",                                      null: false
    t.integer  "created_by",                   default: 0,     null: false
    t.string   "created_by_alias",             default: "",    null: false
    t.datetime "modified",                                     null: false
    t.integer  "modified_by",                  default: 0,     null: false
    t.text     "metakey",                                      null: false
    t.text     "metadesc",                                     null: false
    t.text     "metadata",                                     null: false
    t.integer  "featured",         limit: 1,   default: 0,     null: false
    t.string   "xreference",       limit: 50,                  null: false
    t.datetime "publish_up",                                   null: false
    t.datetime "publish_down",                                 null: false
    t.integer  "version",                      default: 1,     null: false
    t.text     "images",                                       null: false
  end

  add_index "tsea0_weblinks", ["access"], name: "idx_access", using: :btree
  add_index "tsea0_weblinks", ["catid"], name: "idx_catid", using: :btree
  add_index "tsea0_weblinks", ["checked_out"], name: "idx_checkout", using: :btree
  add_index "tsea0_weblinks", ["created_by"], name: "idx_createdby", using: :btree
  add_index "tsea0_weblinks", ["featured", "catid"], name: "idx_featured_catid", using: :btree
  add_index "tsea0_weblinks", ["language"], name: "idx_language", using: :btree
  add_index "tsea0_weblinks", ["state"], name: "idx_state", using: :btree
  add_index "tsea0_weblinks", ["xreference"], name: "idx_xreference", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "picture_file"
    t.string   "file_location"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
