/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import {
    SafeAreaView,
    View,
    Text,
} from 'react-native';
import NaverMap from './components/NaverMapView';

import { Styles } from './Utils/Styles';


type Props = {
    messages: Array<String>, // any
}

const App: (Props) => React$Node = (props) => {
    return (
        <SafeAreaView style={ { flex: 1 } }>
            <View
                style={ {
                    height: 60,
                    borderColor: Styles.Color.Grey2,
                    paddingHorizontal: 16,
                    borderBottomWidth: 1,
                } }>
                <Text style={ { fontSize: Styles.Size.P2 } }>some texts on header</Text>
                { props.messages.map(message => <Text
                    key={ message }
                    style={ { fontSize: Styles.Size.P2 } }>{ message }</Text>) }
            </View>
            <NaverMap
                style={ { flex: 1 } }
                // showLocationButton
            />
            <View
                style={ {
                    height: 60,
                    borderColor: Styles.Color.Grey2,
                    paddingHorizontal: 16,
                    borderTopWidth: 1,
                } }>
                <Text style={ { fontSize: Styles.Size.P2 } }>some texts on footer</Text>
            </View>
        </SafeAreaView>
    );
};

export default App;
