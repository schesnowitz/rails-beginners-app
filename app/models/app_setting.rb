class AppSetting < ApplicationRecord


 validates_presence_of :tab_name, :theme_name


  private

  APP_THEME = %w(  
    default
    cerulean
    darkly
    litera
    materia
    sandstone
    slate
    superhero
    cosmo
    flatly
    lumen
    minty
    simplex
    solar
    united
    cyborg
    journal
    lux
    pulse
    sketchy
    spacelab
    yeti
  )
end
