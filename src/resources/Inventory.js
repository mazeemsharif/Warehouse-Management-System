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

export const InventoryList = (props) => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="inventoryid" />
      <ReferenceField
        reference="warehouse"
        source="warehouseid"
        label="Warehouse"
      >
        <TextField source="warehousename" />
      </ReferenceField>
      <ReferenceField reference="product" source="productid" label="Product">
        <TextField source="productname" />
      </ReferenceField>
      <NumberField source="quantityavailable" />
      <NumberField source="reorderlevel" />
      <NumberField source="warehouselocationid" />
      <EditButton />
    </Datagrid>
  </List>
);

export const InventoryEdit = (props) => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="inventoryid" />
      <NumberInput source="warehouseid" />
      <NumberInput source="productid" />
      <NumberInput source="quantityavailable" />
      <NumberInput source="reorderlevel" />
      <NumberInput source="warehouselocationid" />
    </SimpleForm>
  </Edit>
);

export const InventoryCreate = (props) => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="inventoryid" />
      <NumberInput source="warehouseid" />
      <NumberInput source="productid" />
      <NumberInput source="quantityavailable" />
      <NumberInput source="reorderlevel" />
      <NumberInput source="warehouselocationid" />
    </SimpleForm>
  </Create>
);

export const InventoryShow = (props) => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="inventoryid" />
      <ReferenceField
        reference="warehouse"
        source="warehouseid"
        label="Warehouse"
      >
        <TextField source="warehousename" />
      </ReferenceField>
      <ReferenceField reference="product" source="productid" label="Product">
        <TextField source="productname" />
      </ReferenceField>
      <NumberField source="quantityavailable" />
      <NumberField source="reorderlevel" />
      <NumberField source="warehouselocationid" />
    </SimpleShowLayout>
  </Show>
);
