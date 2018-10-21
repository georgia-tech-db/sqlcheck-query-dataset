CREATE TABLE `payum_token`( `id` INTEGER NOT NULL AUTO_INCREMENT, `hash` VARCHAR(255), `details` TEXT, `after_url` VARCHAR(255), `target_url` VARCHAR(255), `gateway_name` VARCHAR(255), PRIMARY KEY (`id`))
CREATE TABLE `payum_payment`( `id` INTEGER NOT NULL AUTO_INCREMENT, `number` VARCHAR(255), `description` VARCHAR(255), `client_email` VARCHAR(255), `client_id` VARCHAR(255), `total_amount` INTEGER, `currency_code` VARCHAR(255), `currency_digits_after_decimal_point` INTEGER, `details` TEXT, PRIMARY KEY (`id`))
