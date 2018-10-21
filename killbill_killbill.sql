CREATE INDEX users_username ON users(username);
CREATE INDEX idx_comp_where ON notifications (effective_date, processing_state, processing_owner, processing_available_date);
CREATE INDEX payment_attempts_tenant_account_record_id ON payment_attempts(tenant_record_id, account_record_id);
CREATE INDEX payment_history_target_record_id ON payment_history(target_record_id);
CREATE INDEX invoice_payments_tenant_account_record_id ON invoice_payments(tenant_record_id, account_record_id);
CREATE INDEX invoice_payments_reversals ON invoice_payments(linked_invoice_payment_id);
CREATE TABLE subscription_events ( record_id serial unique, id varchar(36) NOT NULL, event_type varchar(15) NOT NULL, user_type varchar(25) DEFAULT NULL, effective_date datetime NOT NULL, subscription_id varchar(36) NOT NULL, plan_name varchar(255) DEFAULT NULL, phase_name varchar(255) DEFAULT NULL, price_list_name varchar(64) DEFAULT NULL, billing_cycle_day_local int DEFAULT NULL, is_active boolean default true, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX account_email_history_tenant_account_record_id ON account_email_history(tenant_record_id, account_record_id);
CREATE TABLE tags ( record_id serial unique, id varchar(36) NOT NULL, tag_definition_id varchar(36) NOT NULL, object_id varchar(36) NOT NULL, object_type varchar(30) NOT NULL, is_active boolean default true, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX bundles_account ON bundles(account_id);
CREATE TABLE _invoice_payment_control_plugin_auto_pay_off ( record_id serial unique, attempt_id varchar(36) NOT NULL, payment_external_key varchar(255) NOT NULL, transaction_external_key varchar(255) NOT NULL, account_id varchar(36) NOT NULL, plugin_name varchar(50) NOT NULL, payment_id varchar(36), payment_method_id varchar(36) NOT NULL, amount numeric(15,9), currency varchar(3), is_active boolean default true, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, PRIMARY KEY (record_id))
CREATE INDEX payment_attempts_payment_transaction_key ON payment_attempts(transaction_external_key);
CREATE INDEX accounts_tenant_record_id ON accounts(tenant_record_id);
CREATE INDEX _invoice_payment_control_plugin_auto_pay_off_account ON _invoice_payment_control_plugin_auto_pay_off(account_id);
CREATE INDEX custom_field_history_tenant_account_record_id ON custom_field_history(tenant_record_id, account_record_id);
CREATE INDEX catalog_override_tier_block_idx ON catalog_override_tier_block(tenant_record_id, block_number, block_def_record_id);
create table sessions ( record_id serial unique, id varchar(36) NOT NULL, start_timestamp datetime not null, last_access_time datetime default null, timeout int, host varchar(100) default null, session_data mediumblob default null, primary key(record_id))
CREATE INDEX tag_definition_history_name ON tag_definition_history(name);
CREATE INDEX payment_method_history_target_record_id ON payment_method_history(target_record_id);
CREATE INDEX subscriptions_tenant_account_record_id ON subscriptions(tenant_record_id, account_record_id);
CREATE INDEX transactions_payment_id ON payment_transactions(payment_id);
CREATE INDEX idx_ent_1 ON subscription_events(subscription_id, is_active, effective_date);
CREATE INDEX transaction_history_tenant_account_record_id ON payment_transaction_history(tenant_record_id, account_record_id);
CREATE INDEX catalog_override_block_definition_idx ON catalog_override_block_definition(tenant_record_id, parent_unit_name, currency);
CREATE TABLE blocking_states ( record_id serial unique, id varchar(36) NOT NULL, blockable_id varchar(36) NOT NULL, type varchar(20) NOT NULL, state varchar(50) NOT NULL, service varchar(20) NOT NULL, block_change bool NOT NULL, block_entitlement bool NOT NULL, block_billing bool NOT NULL, effective_date datetime NOT NULL, is_active boolean default true, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, updated_date datetime DEFAULT NULL, updated_by varchar(50) DEFAULT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX account_email_target_record_id ON account_email_history(target_record_id);
select api_secret, api_salt from tenants where api_key = ?
CREATE INDEX audit_log_user_name ON audit_log(created_by);
CREATE INDEX roles_permissions_idx ON roles_permissions(role_name, permission);
CREATE INDEX payment_attempts_payment ON payment_attempts(transaction_id);
CREATE TABLE account_emails ( record_id serial unique, id varchar(36) NOT NULL, account_id varchar(36) NOT NULL, email varchar(128) NOT NULL, is_active boolean default true, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX blocking_states_id ON blocking_states(blockable_id);
select account_record_id from custom_fields where object_id = ?
CREATE INDEX transactions_tenant_account_record_id ON payment_transactions(tenant_record_id, account_record_id);
CREATE INDEX invoice_payments_payment_id ON invoice_payments(payment_id);
CREATE INDEX tenant_kvs_key ON tenant_kvs(tenant_key);
CREATE INDEX custom_fields_object_id_object_type ON custom_fields(object_id, object_type);
CREATE INDEX catalog_override_plan_phase_idx ON catalog_override_plan_phase(tenant_record_id, phase_number, phase_def_record_id);
CREATE INDEX audit_log_fetch_target_record_id ON audit_log(
CREATE TABLE bundles ( record_id serial unique, id varchar(36) NOT NULL, external_key varchar(255) NOT NULL, account_id varchar(36) NOT NULL, last_sys_update_date datetime, original_created_date datetime NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
update sessions set start_timestamp = :startTimestamp, last_access_time = :lastAccessTime, timeout = :timeout, host = :host, session_data = :sessionDatawhere id = :idwhere id = :id
CREATE TABLE payments ( record_id serial unique, id varchar(36) NOT NULL, account_id varchar(36) NOT NULL, payment_method_id varchar(36) NOT NULL, external_key varchar(255) NOT NULL, state_name varchar(64) DEFAULT NULL, last_success_state_name varchar(64) DEFAULT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY (record_id))
CREATE INDEX idx_bus_ext_where ON bus_ext_events (processing_state, processing_owner, processing_available_date);
CREATE INDEX account_history_tenant_record_id ON account_history(tenant_record_id);
CREATE INDEX invoice_items_invoice_id ON invoice_items(invoice_id 
CREATE INDEX bus_events_history_tenant_account_record_id ON bus_events_history(search_key2, search_key1);
CREATE INDEX tag_definition_history_target_record_id ON tag_definition_history(target_record_id);
CREATE TABLE payment_attempts ( record_id serial unique, id varchar(36) NOT NULL, account_id varchar(36) NOT NULL, payment_method_id varchar(36) DEFAULT NULL, payment_external_key varchar(255) NOT NULL, transaction_id varchar(36), transaction_external_key varchar(255) NOT NULL, transaction_type varchar(32) NOT NULL, state_name varchar(32) NOT NULL, amount numeric(15,9), currency varchar(3), plugin_name varchar(1024) NOT NULL, plugin_properties mediumblob, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY (record_id))
CREATE INDEX tags_by_object ON tags(object_id);
CREATE TABLE node_infos ( record_id serial unique, node_name varchar(50) NOT NULL, boot_date datetime NOT NULL, updated_date datetime DEFAULT NULL, node_info text NOT NULL, is_active boolean default true, PRIMARY KEY(record_id))
CREATE INDEX user_roles_idx ON user_roles(username, role_name);
select password, password_salt from users where username = ? and is_active
CREATE TABLE account_email_history ( record_id serial unique, id varchar(36) NOT NULL, target_record_id bigint /*! unsigned */ not null, account_id varchar(36) NOT NULL, email varchar(128) NOT NULL, is_active boolean default true, change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE invoice_items ( record_id serial unique, id varchar(36) NOT NULL, type varchar(24) NOT NULL, invoice_id varchar(36) NOT NULL, account_id varchar(36) NOT NULL, child_account_id varchar(36), bundle_id varchar(36), subscription_id varchar(36), description varchar(255), product_name varchar(255), plan_name varchar(255), phase_name varchar(255), usage_name varchar(255), start_date date, end_date date, amount numeric(15,9) NOT NULL, rate numeric(15,9) NULL, currency varchar(3) NOT NULL, linked_item_id varchar(36), quantity int, item_details text, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE payment_transactions ( record_id serial unique, id varchar(36) NOT NULL, attempt_id varchar(36) DEFAULT NULL, transaction_external_key varchar(255) NOT NULL, transaction_type varchar(32) NOT NULL, effective_date datetime NOT NULL, transaction_status varchar(50) NOT NULL, amount numeric(15,9), currency varchar(3), processed_amount numeric(15,9), processed_currency varchar(3), payment_id varchar(36) NOT NULL, gateway_error_code varchar(32), gateway_error_msg text, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY (record_id))
CREATE TABLE payment_transaction_history ( record_id serial unique, id varchar(36) NOT NULL, attempt_id varchar(36) DEFAULT NULL, transaction_external_key varchar(255) NOT NULL, target_record_id bigint /*! unsigned */ not null, transaction_type varchar(32) NOT NULL, effective_date datetime NOT NULL, transaction_status varchar(50) NOT NULL, amount numeric(15,9), currency varchar(3), processed_amount numeric(15,9), processed_currency varchar(3), payment_id varchar(36) NOT NULL, gateway_error_code varchar(32), gateway_error_msg text, change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY (record_id))
CREATE INDEX transaction_history_target_record_id ON payment_transaction_history(target_record_id);
CREATE INDEX accounts_name_tenant_record_id ON accounts(name, tenant_record_id);
select record_id from tenants WHERE api_key = p_api_key into v_tenant_record_id;
CREATE TABLE notifications_history ( record_id serial unique, class_name varchar(256) NOT NULL, event_json text NOT NULL, user_token varchar(36), created_date datetime NOT NULL, creating_owner varchar(50) NOT NULL, processing_owner varchar(50) DEFAULT NULL, processing_available_date datetime DEFAULT NULL, processing_state varchar(14) DEFAULT 'AVAILABLE', error_count int /*! unsigned */ DEFAULT 0, search_key1 bigint /*! unsigned */ not null, search_key2 bigint /*! unsigned */ not null default 0, queue_name varchar(64) NOT NULL, effective_date datetime NOT NULL, future_user_token varchar(36), PRIMARY KEY(record_id))
CREATE TABLE bus_events ( record_id serial unique, class_name varchar(128) NOT NULL, event_json text NOT NULL, user_token varchar(36), created_date datetime NOT NULL, creating_owner varchar(50) NOT NULL, processing_owner varchar(50) DEFAULT NULL, processing_available_date datetime DEFAULT NULL, processing_state varchar(14) DEFAULT 'AVAILABLE', error_count int /*! unsigned */ DEFAULT 0, /* Note: account_record_id can be NULL (e.g. TagDefinition events) */ search_key1 bigint /*! unsigned */ default null, search_key2 bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX payment_history_tenant_account_record_id ON payment_history(tenant_record_id, account_record_id);
CREATE TABLE dummy ( dummy_id varchar(36) NOT NULL, value varchar(256) NOT NULL, PRIMARY KEY(dummy_id))
CREATE INDEX bus_events_tenant_account_record_id ON bus_events(search_key2, search_key1);
CREATE INDEX blocking_states_id_real ON blocking_states(id);
CREATE INDEX invoices_tenant_account_record_id ON invoices(tenant_record_id, account_record_id);
create table catalog_override_tier_definition(record_id serial unique,fixed_price decimal(15,9) NULL,recurring_price decimal(15,9) NULL,currency varchar(3) NOT NULL,effective_date datetime NOT NULL,created_date datetime NOT NULL,created_by varchar(50) NOT NULL,tenant_record_id bigint /*! unsigned */ not null default 0,PRIMARY KEY(record_id))
CREATE INDEX account_history_target_record_id ON account_history(target_record_id);
CREATE INDEX accounts_email_tenant_record_id ON accounts(email, tenant_record_id);
CREATE INDEX invoice_payments_payment_cookie_id ON invoice_payments(payment_cookie_id);
CREATE INDEX invoice_parent_children_child_invoice_id ON invoice_parent_children(child_invoice_id);
CREATE INDEX idx_ent_2 ON subscription_events(subscription_id, effective_date, created_date, id);
CREATE INDEX custom_fields_tenant_account_record_id ON custom_fields(tenant_record_id, account_record_id);
CREATE INDEX subscription_events_tenant_account_record_id ON subscription_events(tenant_record_id, account_record_id);
CREATE INDEX audit_log_via_history ON audit_log(target_record_id, 
select * from _invoice_payment_control_plugin_auto_pay_off where account_id = ? and is_active
CREATE TABLE catalog_override_plan_definition ( record_id serial unique, parent_plan_name varchar(255) NOT NULL, effective_date datetime NOT NULL, is_active boolean default true, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
update invoice_payments set success = false  where payment_cookie_id = ?
CREATE INDEX invoice_parent_children_invoice_id ON invoice_parent_children(parent_invoice_id);
select * from " + table);
CREATE INDEX idx_bus_where ON bus_events (processing_state, processing_owner, processing_available_date);
CREATE INDEX rolled_up_usage_tracking_id_subscription_id_tenant_record_id ON rolled_up_usage(tracking_id, subscription_id, tenant_record_id);
CREATE INDEX payment_attempt_history_tenant_account_record_id ON payment_attempt_history(tenant_record_id, account_record_id);
CREATE INDEX catalog_override_plan_definition_tenant_record_id ON catalog_override_plan_definition(tenant_record_id);
CREATE INDEX subscriptions_bundle_id ON subscriptions(bundle_id);
CREATE INDEX catalog_override_usage_definition_idx ON catalog_override_usage_definition(tenant_record_id, parent_usage_name, currency);
update accounts set email = :email, name = :name, first_name_length = :firstNameLength, currency = :currency, billing_cycle_day_local = :billingCycleDayLocal, parent_account_id = :parentAccountId, is_payment_delegated_to_parent = :isPaymentDelegatedToParent, payment_method_id = :paymentMethodId, time_zone = :timeZone, locale = :locale, address1 = :address1, address2 = :address2, company_name = :companyName, city = :city, state_or_province = :stateOrProvince, country = :country, postal_code = :postalCode, phone = :phone, notes = :notes, updated_date = :updatedDate, updated_by = :updatedBywhere id = :idwhere id = :id
CREATE INDEX payment_methods_tenant_account_record_id ON payment_methods(tenant_record_id, account_record_id);
CREATE INDEX tag_history_target_record_id ON tag_history(target_record_id);
CREATE INDEX audit_log_tenant_account_record_id ON audit_log(tenant_record_id, account_record_id);
CREATE TABLE catalog_override_plan_phase ( record_id serial unique, phase_number int /*! unsigned */ NOT NULL, phase_def_record_id bigint /*! unsigned */ not null, target_plan_def_record_id bigint /*! unsigned */ not null, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX account_emails_tenant_account_record_id ON account_emails(tenant_record_id, account_record_id);
CREATE TABLE notifications ( record_id serial unique, class_name varchar(256) NOT NULL, event_json text NOT NULL, user_token varchar(36), created_date datetime NOT NULL, creating_owner varchar(50) NOT NULL, processing_owner varchar(50) DEFAULT NULL, processing_available_date datetime DEFAULT NULL, processing_state varchar(14) DEFAULT 'AVAILABLE', error_count int /*! unsigned */ DEFAULT 0, search_key1 bigint /*! unsigned */ not null, search_key2 bigint /*! unsigned */ not null default 0, queue_name varchar(64) NOT NULL, effective_date datetime NOT NULL, future_user_token varchar(36), PRIMARY KEY(record_id))
CREATE TABLE service_broadcasts ( record_id serial unique, service_name varchar(50) NOT NULL, type varchar(64) NOT NULL, event text NOT NULL, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, PRIMARY KEY(record_id))
CREATE INDEX rolled_up_usage_subscription_id ON rolled_up_usage(subscription_id 
CREATE INDEX bus_ext_events_tenant_account_record_id ON bus_ext_events(search_key2, search_key1);
CREATE INDEX tenant_broadcasts_key ON tenant_broadcasts(tenant_record_id);
CREATE INDEX custom_field_history_target_record_id ON custom_field_history(target_record_id);
CREATE TABLE roles_permissions ( record_id serial unique, role_name varchar(128) NULL, permission varchar(128) NULL, is_active boolean default true, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, updated_date datetime DEFAULT NULL, updated_by varchar(50) DEFAULT NULL, PRIMARY KEY(record_id))
create table catalog_override_phase_usage(record_id serial unique,usage_number int /*! unsigned */,usage_def_record_id bigint /*! unsigned */ not null,target_phase_def_record_id bigint /*! unsigned */ not null,created_date datetime NOT NULL,created_by varchar(50) NOT NULL,tenant_record_id bigint /*! unsigned */ not null default 0,PRIMARY KEY(record_id))
CREATE INDEX transactions_key ON payment_transactions(transaction_external_key);
CREATE INDEX catalog_override_tier_definition_idx ON catalog_override_usage_definition(tenant_record_id, currency);
CREATE INDEX idx_update ON notifications (processing_state, processing_owner, processing_available_date);
select * from full_of_dates
select record_id, tenant_record_id from accounts WHERE external_key = p_account_key into v_account_record_id, v_tenant_record_id;
CREATE TABLE bus_ext_events ( record_id serial unique, class_name varchar(128) NOT NULL, event_json text NOT NULL, user_token varchar(36), created_date datetime NOT NULL, creating_owner varchar(50) NOT NULL, processing_owner varchar(50) DEFAULT NULL, processing_available_date datetime DEFAULT NULL, processing_state varchar(14) DEFAULT 'AVAILABLE', error_count int /*! unsigned */ DEFAULT 0, /* Note: account_record_id can be NULL (e.g. TagDefinition events) */ search_key1 bigint /*! unsigned */ default null, search_key2 bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX notifications_history_tenant_account_record_id ON notifications_history(search_key2, search_key1);
create table catalog_override_usage_tier(record_id serial unique,tier_number int /*! unsigned */,tier_def_record_id bigint /*! unsigned */ not null,target_usage_def_record_id bigint /*! unsigned */ not null,created_date datetime NOT NULL,created_by varchar(50) NOT NULL,tenant_record_id bigint /*! unsigned */ not null default 0,PRIMARY KEY(record_id))
CREATE TABLE rolled_up_usage ( record_id serial unique, id varchar(36) NOT NULL, subscription_id varchar(36) NOT NULL, unit_type varchar(255) NOT NULL, record_date date NOT NULL, amount bigint NOT NULL, tracking_id varchar(128) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE kombucha ( record_id serial unique, id varchar(36) NOT NULL, tea varchar(50) NOT NULL, mushroom varchar(50) NOT NULL, sugar varchar(50) NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX invoice_parent_children_tenant_account_record_id ON invoice_parent_children(tenant_record_id, account_record_id);
CREATE INDEX rolled_up_usage_account_record_id ON rolled_up_usage(account_record_id);
CREATE INDEX invoices_account ON invoices(account_id 
CREATE INDEX accounts_company_name_tenant_record_id ON accounts(company_name, tenant_record_id);
select permission from roles_permissions where role_name = ? and is_active
CREATE INDEX invoice_items_account_id ON invoice_items(account_id 
select target_record_id from audit_log where id = '" + auditLogId.toString() + "';
CREATE INDEX payments_tenant_account_record_id ON payments(tenant_record_id, account_record_id);
CREATE INDEX tag_history_by_object ON tags(object_id);
create table catalog_override_block_definition(record_id serial unique,parent_unit_name varchar(255) NOT NULL,size decimal(15,9) NOT NULL,max decimal(15,9) NULL,currency varchar(3) NOT NULL,price decimal(15,9) NOT NULL,effective_date datetime NOT NULL,created_date datetime NOT NULL,created_by varchar(50) NOT NULL,tenant_record_id bigint /*! unsigned */ not null default 0,PRIMARY KEY(record_id))
update invoice_items set type = CREDIT_ADJ  where type = REFUND_ADJ
CREATE TABLE validation_test ( column1 varchar(25), column2 char(2) NOT NULL, column3 numeric(10,4), column4 datetime)
CREATE TABLE full_of_dates ( record_id serial unique, date1 date default NULL, datetime1 datetime default NULL, timestamp1 timestamp, PRIMARY KEY(record_id))
select role_name from user_roles where username = ? and is_active
create table catalog_override_usage_definition(record_id serial unique,parent_usage_name varchar(255) NOT NULL,type varchar(255) NOT NULL,fixed_price decimal(15,9) NULL,recurring_price decimal(15,9) NULL,currency varchar(3) NOT NULL,effective_date datetime NOT NULL,created_date datetime NOT NULL,created_by varchar(50) NOT NULL,tenant_record_id bigint /*! unsigned */ not null default 0,PRIMARY KEY(record_id))
CREATE TABLE tag_definition_history ( record_id serial unique, id varchar(36) NOT NULL, target_record_id bigint /*! unsigned */ not null, name varchar(30) NOT NULL, applicable_object_types varchar(500), description varchar(200), is_active boolean default true, change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, /* Note: there is no account_record_id to populate */ account_record_id bigint /*! unsigned */ default null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX accounts_parents ON accounts(parent_account_id);
CREATE INDEX tag_history_tenant_account_record_id ON tag_history(tenant_record_id, account_record_id);
CREATE INDEX payments_accnt ON payments(account_id);
CREATE INDEX bus_ext_events_history_tenant_account_record_id ON bus_ext_events_history(search_key2, search_key1);
CREATE TABLE tenants ( record_id serial unique, id varchar(36) NOT NULL, external_key varchar(255) NULL, api_key varchar(128) NULL, api_secret varchar(128) NULL, api_salt varchar(128) NULL, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, updated_date datetime DEFAULT NULL, updated_by varchar(50) DEFAULT NULL, PRIMARY KEY(record_id))
CREATE INDEX invoice_items_subscription_id ON invoice_items(subscription_id 
CREATE TABLE dummy2 ( id serial unique, dummy_id varchar(36) NOT NULL, PRIMARY KEY(id))
CREATE INDEX payment_method_history_tenant_account_record_id ON payment_method_history(tenant_record_id, account_record_id);
CREATE TABLE payment_history ( record_id serial unique, id varchar(36) NOT NULL, target_record_id bigint /*! unsigned */ not null, account_id varchar(36) NOT NULL, payment_method_id varchar(36) NOT NULL, external_key varchar(255) NOT NULL, state_name varchar(64) DEFAULT NULL, last_success_state_name varchar(64) DEFAULT NULL, change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE bus_ext_events_history ( record_id serial unique, class_name varchar(128) NOT NULL, event_json text NOT NULL, user_token varchar(36), created_date datetime NOT NULL, creating_owner varchar(50) NOT NULL, processing_owner varchar(50) DEFAULT NULL, processing_available_date datetime DEFAULT NULL, processing_state varchar(14) DEFAULT 'AVAILABLE', error_count int /*! unsigned */ DEFAULT 0, /* Note: account_record_id can be NULL (e.g. TagDefinition events) */ search_key1 bigint /*! unsigned */ default null, search_key2 bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE invoices ( record_id serial unique, id varchar(36) NOT NULL, account_id varchar(36) NOT NULL, invoice_date date NOT NULL, target_date date, currency varchar(3) NOT NULL, status varchar(15) NOT NULL DEFAULT 'COMMITTED', migrated bool NOT NULL, parent_invoice bool NOT NULL DEFAULT FALSE, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX tags_tenant_account_record_id ON tags(tenant_record_id, account_record_id);
CREATE TABLE invoice_payments ( record_id serial unique, id varchar(36) NOT NULL, type varchar(24) NOT NULL, invoice_id varchar(36) NOT NULL, payment_id varchar(36), payment_date datetime NOT NULL, amount numeric(15,9) NOT NULL, currency varchar(3) NOT NULL, processed_currency varchar(3) NOT NULL, payment_cookie_id varchar(255) DEFAULT NULL, linked_invoice_payment_id varchar(36) DEFAULT NULL, success bool DEFAULT true, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX invoice_payments_invoice_id ON invoice_payments(invoice_id);
CREATE INDEX account_email_account_id_email ON account_emails(account_id, email);
CREATE INDEX tag_definition_history_id ON tag_definition_history(id);
CREATE TABLE user_roles ( record_id serial unique, username varchar(128) NULL, role_name varchar(128) NULL, is_active boolean default true, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, updated_date datetime DEFAULT NULL, updated_by varchar(50) DEFAULT NULL, PRIMARY KEY(record_id))
create table catalog_override_tier_block(record_id serial unique,block_number int /*! unsigned */,block_def_record_id bigint /*! unsigned */ not null,target_tier_def_record_id bigint /*! unsigned */ not null,created_date datetime NOT NULL,created_by varchar(50) NOT NULL,tenant_record_id bigint /*! unsigned */ NOT NULL default 0,PRIMARY KEY(record_id))
CREATE TABLE tenant_kvs ( record_id serial unique, id varchar(36) NOT NULL, tenant_record_id bigint /*! unsigned */ not null default 0, tenant_key varchar(255) NOT NULL, tenant_value mediumtext NOT NULL, is_active boolean default true, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, updated_date datetime DEFAULT NULL, updated_by varchar(50) DEFAULT NULL, PRIMARY KEY(record_id))
CREATE INDEX custom_field_history_object_id_object_type ON custom_fields(object_id, object_type);
CREATE TABLE payment_method_history ( record_id serial unique, id varchar(36) NOT NULL, external_key varchar(255) NOT NULL, target_record_id bigint /*! unsigned */ not null, account_id varchar(36) NOT NULL, plugin_name varchar(50) NOT NULL, is_active boolean default true, change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX transactions_status ON payment_transactions(transaction_status);
CREATE TABLE tag_history ( record_id serial unique, id varchar(36) NOT NULL, target_record_id bigint /*! unsigned */ not null, object_id varchar(36) NOT NULL, object_type varchar(30) NOT NULL, tag_definition_id varchar(36) NOT NULL, is_active boolean default true, change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX invoice_items_linked_item_id ON invoice_items(linked_item_id 
select account_record_id from tags where object_id = ?
CREATE INDEX catalog_override_phase_usage_idx ON catalog_override_phase_usage(tenant_record_id, usage_number, usage_def_record_id);
CREATE TABLE custom_field_history ( record_id serial unique, id varchar(36) NOT NULL, target_record_id bigint /*! unsigned */ not null, object_id varchar(36) NOT NULL, object_type varchar(30) NOT NULL, is_active boolean default true, field_name varchar(64), field_value varchar(255), change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX payment_attempts_payment_key ON payment_attempts(payment_external_key);
CREATE INDEX invoice_items_tenant_account_record_id ON invoice_items(tenant_record_id, account_record_id);
CREATE INDEX bundles_tenant_account_record_id ON bundles(tenant_record_id, account_record_id);
CREATE TABLE invoice_parent_children ( record_id serial unique, id varchar(36) NOT NULL, parent_invoice_id varchar(36) NOT NULL, child_invoice_id varchar(36) NOT NULL, child_account_id varchar(36) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE audit_log ( record_id serial unique, id varchar(36) NOT NULL, target_record_id bigint /*! unsigned */ not null, table_name varchar(50) NOT NULL, change_type varchar(6) NOT NULL, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, reason_code varchar(255) DEFAULT NULL, comments varchar(255) DEFAULT NULL, user_token varchar(36), /* Note: can be NULL (e.g. tenant_kvs audits) */ account_record_id bigint /*! unsigned */ default null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX payment_attempts_payment_state ON payment_attempts(state_name);
CREATE TABLE bus_events_history ( record_id serial unique, class_name varchar(128) NOT NULL, event_json text NOT NULL, user_token varchar(36), created_date datetime NOT NULL, creating_owner varchar(50) NOT NULL, processing_owner varchar(50) DEFAULT NULL, processing_available_date datetime DEFAULT NULL, processing_state varchar(14) DEFAULT 'AVAILABLE', error_count int /*! unsigned */ DEFAULT 0, /* Note: account_record_id can be NULL (e.g. TagDefinition events) */ search_key1 bigint /*! unsigned */ default null, search_key2 bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE subscriptions ( record_id serial unique, id varchar(36) NOT NULL, bundle_id varchar(36) NOT NULL, category varchar(32) NOT NULL, start_date datetime NOT NULL, bundle_start_date datetime NOT NULL, charged_through_date datetime DEFAULT NULL, migrated bool NOT NULL default FALSE, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE TABLE catalog_override_phase_definition ( record_id serial unique, parent_phase_name varchar(255) NOT NULL, currency varchar(3) NOT NULL, fixed_price numeric(15,9) NULL, recurring_price numeric(15,9) NULL, effective_date datetime NOT NULL, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
select max(record_id) from <tableName()>);
CREATE INDEX payments_tenant_record_id_state_name ON payments(tenant_record_id, state_name);
CREATE TABLE tag_definitions ( record_id serial unique, id varchar(36) NOT NULL, name varchar(20) NOT NULL, applicable_object_types varchar(500), description varchar(200) NOT NULL, is_active boolean default true, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
CREATE INDEX blocking_states_tenant_account_record_id ON blocking_states(tenant_record_id, account_record_id);
CREATE TABLE tenant_broadcasts ( record_id serial unique, id varchar(36) NOT NULL, /* Note: can be NULL in case of delete */ target_record_id bigint /*! unsigned */ default null, target_table_name varchar(50) NOT NULL, tenant_record_id bigint /*! unsigned */ not null default 0, type varchar(64) NOT NULL, user_token varchar(36), created_date datetime NOT NULL, created_by varchar(50) NOT NULL, updated_date datetime DEFAULT NULL, updated_by varchar(50) DEFAULT NULL, PRIMARY KEY(record_id))
CREATE TABLE custom_fields ( record_id serial unique, id varchar(36) NOT NULL, object_id varchar(36) NOT NULL, object_type varchar(30) NOT NULL, is_active boolean default true, field_name varchar(64) NOT NULL, field_value varchar(255), created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) DEFAULT NULL, updated_date datetime DEFAULT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
update _invoice_payment_control_plugin_auto_pay_off set is_active = false  where account_id = ?
CREATE INDEX rolled_up_usage_tenant_account_record_id ON rolled_up_usage(tenant_record_id, account_record_id);
CREATE INDEX tag_definitions_tenant_record_id ON tag_definitions(tenant_record_id);
CREATE INDEX payment_methods_plugin_name ON payment_methods(plugin_name);
CREATE INDEX payment_attempt_history_target_record_id ON payment_attempt_history(target_record_id);
create index invoices_account on invoices(account_id 
CREATE INDEX catalog_override_phase_definition_idx ON catalog_override_phase_definition(tenant_record_id, parent_phase_name, currency);
CREATE INDEX tag_definition_history_tenant_record_id ON tag_definition_history(tenant_record_id);
CREATE TABLE payment_attempt_history ( record_id serial unique, id varchar(36) NOT NULL, target_record_id bigint /*! unsigned */ not null, account_id varchar(36) NOT NULL, payment_method_id varchar(36) DEFAULT NULL, payment_external_key varchar(255) NOT NULL, transaction_id varchar(36), transaction_external_key varchar(255) NOT NULL, transaction_type varchar(32) NOT NULL, state_name varchar(32) NOT NULL, amount numeric(15,9), currency varchar(3), plugin_name varchar(1024) NOT NULL, plugin_properties mediumblob, change_type varchar(6) NOT NULL, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY(record_id))
select id from tag_history limit 1").get(0).get("id
CREATE TABLE payment_methods ( record_id serial unique, id varchar(36) NOT NULL, external_key varchar(255) NOT NULL, account_id varchar(36) NOT NULL, plugin_name varchar(50) NOT NULL, is_active boolean default true, created_by varchar(50) NOT NULL, created_date datetime NOT NULL, updated_by varchar(50) NOT NULL, updated_date datetime NOT NULL, account_record_id bigint /*! unsigned */ not null, tenant_record_id bigint /*! unsigned */ not null default 0, PRIMARY KEY (record_id))
CREATE TABLE users ( record_id serial unique, username varchar(128) NULL, password varchar(128) NULL, password_salt varchar(128) NULL, is_active boolean default true, created_date datetime NOT NULL, created_by varchar(50) NOT NULL, updated_date datetime DEFAULT NULL, updated_by varchar(50) DEFAULT NULL, PRIMARY KEY(record_id))
CREATE INDEX idx_get_ready ON notifications (effective_date, created_date);
CREATE INDEX catalog_override_usage_tier_idx ON catalog_override_usage_tier(tenant_record_id, tier_number, tier_def_record_id);
CREATE INDEX notifications_tenant_account_record_id ON notifications(search_key2, search_key1);
