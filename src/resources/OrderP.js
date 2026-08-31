import React from "react";
import {
  List,
  Datagrid,
  TextField,
  NumberField,
  EditButton,
  Edit,
  SimpleForm,
  TextInput,
  NumberInput,
  Create,
  Show,
  SimpleShowLayout,
  ReferenceField,
} from "react-admin";

export const OrderPList = (props) => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="orderid" />
      <ReferenceField reference="customer" source="customerid" label="Customer">
        <TextField source="customername" />
      </ReferenceField>
      <TextField source="orderdate" />
      <TextField source="orderstatus" />
      <TextField source="shippingmethod" />
      <TextField source="paymentmethod" />
      <NumberField source="totalamount" />
      <EditButton />
    </Datagrid>
  </List>
);

export const OrderPEdit = (props) => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="orderid" />
      <NumberInput source="customerid" />
      <TextInput source="orderdate" />
      <TextInput source="orderstatus" />
      <TextInput source="shippingmethod" />
      <TextInput source="paymentmethod" />
      <NumberInput source="totalamount" />
    </SimpleForm>
  </Edit>
);

export const OrderPCreate = (props) => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="orderid" />
      <NumberInput source="customerid" />
      <TextInput source="orderdate" />
      <TextInput source="orderstatus" />
      <TextInput source="shippingmethod" />
      <TextInput source="paymentmethod" />
      <NumberInput source="totalamount" />
    </SimpleForm>
  </Create>
);

export const OrderPShow = (props) => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="orderid" />
      <ReferenceField reference="customer" source="customerid" label="Customer">
        <TextField source="customername" />
      </ReferenceField>
      <TextField source="orderdate" />
      <TextField source="orderstatus" />
      <TextField source="shippingmethod" />
      <TextField source="paymentmethod" />
      <NumberField source="totalamount" />
    </SimpleShowLayout>
  </Show>
);
