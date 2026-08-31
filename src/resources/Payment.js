import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const PaymentList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="paymentid" />
      <NumberField source="orderid" />
      <NumberField source="paymentamount" />
      <TextField source="paymentdate" />
      <TextField source="paymentmethod" />
      <EditButton />
    </Datagrid>
  </List>
);

export const PaymentEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="paymentid" />
      <NumberInput source="orderid" />
      <NumberInput source="paymentamount" />
      <TextInput source="paymentdate" />
      <TextInput source="paymentmethod" />
    </SimpleForm>
  </Edit>
);

export const PaymentCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="paymentid" />
      <NumberInput source="orderid" />
      <NumberInput source="paymentamount" />
      <TextInput source="paymentdate" />
      <TextInput source="paymentmethod" />
    </SimpleForm>
  </Create>
);

export const PaymentShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="paymentid" />
      <NumberField source="orderid" />
      <NumberField source="paymentamount" />
      <TextField source="paymentdate" />
      <TextField source="paymentmethod" />
    </SimpleShowLayout>
  </Show>
);
