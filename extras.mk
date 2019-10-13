# Copyright (C) 2020 TitaniumOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Copy fonts to system
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/extras/fonts,$(TARGET_COPY_OUT_SYSTEM)/fonts)

# Include prebuilts packages
include vendor/extras/Prebuilts/Prebuilts.mk

# Include ColorBucket themes
include vendor/extras/ColorBucket/ColorBucket.mk

# Include GesturePill
include vendor/extras/GesturePill/GesturePill.mk
