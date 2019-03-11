class PagesController < ApplicationController
  def home
    @user_agent = request.user_agent
    @client = DeviceDetector.new(@user_agent)

    @name = @client.name # => 'Chrome'
    @name_full = @client.full_version # => '30.0.1599.69'

    @os_name = @client.os_name # => 'Windows'
    @os_full = @client.os_full_version # => '8'

    # For many devices, you can also query the device name (usually the model name)
    @device_name = @client.device_name # => 'iPhone 5'
    # Device types can be one of the following: desktop, smartphone, tablet, console,
    # portable media player, tv, car browser, camera
    @device_type = @client.device_type # => 'smartphone'

    redirect_to device_path(device: @os_name) # Optional
  end

  def device
    @user_agent = request.user_agent
    @client = DeviceDetector.new(@user_agent)

    @name = @client.name # => 'Chrome'
    @name_full = @client.full_version # => '30.0.1599.69'

    @os_name = @client.os_name # => 'Windows'
    @os_full = @client.os_full_version # => '8'

    # For many devices, you can also query the device name (usually the model name)
    @device_name = @client.device_name # => 'iPhone 5'
    # Device types can be one of the following: desktop, smartphone, tablet, console,
    # portable media player, tv, car browser, camera
    @device_type = @client.device_type # => 'smartphone'
  end
end
