module FlashesHelper
  FLASH_CLASSES = { alert: "danger", notice:"success", warning: "warnig"}.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_hash.slice "alert",
  end
end
