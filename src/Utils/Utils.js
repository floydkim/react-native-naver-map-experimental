import {
    Dimensions,
    Platform,
} from 'react-native';

export const getIPhoneStatusBarHeight: number = () => {
    const isIOS = Platform.OS === 'ios';
    const hasNotch = Dimensions.get('window').height > 736;

    if (isIOS && hasNotch) {
        return 30;
    }
    else {
        return 20;
    }
};

export const getIPhoneHomeBottomHeight: number = () => {
    const isIOS = Platform.OS === 'ios';
    const hasSoftHomeButton = Dimensions.get('window').height > 736;

    if (isIOS && hasSoftHomeButton) {
        return 15;
    }
    else {
        return 0;
    }
};