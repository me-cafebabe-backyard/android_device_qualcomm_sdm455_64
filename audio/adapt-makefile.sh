#!/bin/bash
sed -i 's|vendor/qcom/opensource/audio-hal/primary-hal|hardware/qcom-caf/msm8998/audio|g' $1
sed -i 's|^PRODUCT_PACKAGES|NO_PRODUCT_PACKAGES|g' $1
sed -i '/AUDIO_FEATURE_ENABLED_DYNAMIC_LOG/d' $1
