# -----------------------------------------------------------------------------
# 
# Geographic data for RGeo
# 
# -----------------------------------------------------------------------------
# Copyright 2010 Daniel Azuma
# 
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# * Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
# * Neither the name of the copyright holder, nor the names of any other
#   contributors to this software, may be used to endorse or promote products
#   derived from this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
# -----------------------------------------------------------------------------
;


# Parent file
require 'rgeo'


module RGeo
  
  
  # The Geography implementation actually comprises a suite of
  # implementations with one common feature: they represent geographic
  # latitude/longitude coordinates measured in degrees. The "x"
  # coordinate corresponds to longitude, and the "y" coordinate to
  # latitude. Thus, coordinates are often expressed in reverse
  # (i.e. long-lat) order. e.g.
  # 
  #  location = geography_factory.point(long, lat)
  # 
  # Some geography implementations include a secondary factory that
  # represents a projection. For these implementations, you can quickly
  # transform data between lat/long coordinates and the projected
  # coordinate system, and most calculations are done in the projected
  # coordinate system. For implementations that do not include this
  # secondary projection factory, calculations are done on the sphereoid.
  # See the various class methods of Geography for more information on
  # the behaviors of the factories they generate.
  
  module Geography
  end
  
  
end


# Dependency files
require 'rgeo/feature'
require 'rgeo/coord_sys'
require 'rgeo/wkrep'
require 'rgeo/impl_helper'
require 'rgeo/cartesian'

# Implementation files.
require 'rgeo/geography/factory'
require 'rgeo/geography/projected_window'
require 'rgeo/geography/interface'
require 'rgeo/geography/spherical_math'
require 'rgeo/geography/spherical_feature_methods'
require 'rgeo/geography/spherical_feature_classes'
require 'rgeo/geography/proj4_projector'
require 'rgeo/geography/simple_mercator_projector'
require 'rgeo/geography/projected_feature_methods'
require 'rgeo/geography/projected_feature_classes'
