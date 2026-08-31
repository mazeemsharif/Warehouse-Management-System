# 🏢 Warehouse Admin – React‑Admin + Supabase

**A complete warehouse management dashboard** built with [React‑Admin](https://marmelab.com/react-admin/) and [Supabase](https://supabase.com/).  
It provides full CRUD operations for warehouses, suppliers, products, employees, customers, orders, shipments, returns, inventory, and payments – all secured with Row‑Level Security (RLS) and Supabase Authentication.

---

## ✨ Features

- **Admin Interface** – All resources (Warehouse, Supplier, Product, Employee, Customer, Order, Order Line, Shipment, Return, Inventory, Inventory Transaction, Purchase Order, Payment).
- **Authentication** – Email/password login using Supabase Auth.
- **Authorization** – Read‑only for regular users; full CRUD for **Managers** (based on `Employee` table and RLS).
- **Modern UI** – Custom theme, icons for every resource, responsive layout.
- **Database Security** – Row‑Level Security policies protect data on the Supabase side.
- **Pre‑loaded Sample Data** – 25+ records per table to get started.

---

## 🛠️ Tech Stack

| Technology | Description |
| :--- | :--- |
| **React‑Admin 4** | Frontend framework for admin panels. |
| **Supabase** | Backend as a Service (PostgreSQL, Auth, Storage). |
| **Material‑UI 5** | UI components and styling. |
| **ra‑supabase** | Data provider for React‑Admin + Supabase. |
| **React** | Frontend library. |
| **Node.js** | Runtime environment. |

---

## 📁 Project Structure

```
warehouse/
├── public/
│   └── index.html
├── src/
│   ├── resources/
│   │   ├── Customer.js
│   │   ├── Employee.js
│   │   ├── Inventory.js
│   │   ├── InventoryTransaction.js
│   │   ├── OrderLine.js
│   │   ├── OrderP.js
│   │   ├── Payment.js
│   │   ├── Product.js
│   │   ├── PurchaseOrder.js
│   │   ├── ReturnP.js
│   │   ├── Shipment.js
│   │   ├── Supplier.js
│   │   ├── Warehouse.js
│   │   └── WarehouseLocation.js
│   ├── App.js
│   ├── authProvider.js
│   ├── index.css
│   ├── index.js
│   ├── layout.js
│   ├── supabaseClient.js
│   └── theme.js
├── .env                          # (not committed) Supabase credentials
├── .gitignore
├── package-lock.json
├── package.json
├── sup.sql                       # Full database schema + RLS policies
└── README.md
```

text

---

## 📦 Installation & Setup

### 1. Clone the repository
```bash
git clone https://github.com/your-username/warehouse-admin.git
cd warehouse-admin
2. Install dependencies
bash
npm install --legacy-peer-deps
3. Create a Supabase project
Go to Supabase and create a new project.

Copy your Project URL and anon public key from Settings → API.

4. Set up environment variables
Create a .env file in the root directory:

text
REACT_APP_SUPABASE_URL=https://your-project-id.supabase.co
REACT_APP_SUPABASE_ANON_KEY=your-anon-key
Never commit this file – it’s already ignored by .gitignore.

5. Run the database schema
Open your Supabase Dashboard → SQL Editor.

Copy the entire content of sup.sql and run it.
This creates all tables, inserts sample data, and enables RLS policies.

6. Create an admin user
In Supabase Dashboard → Authentication → Users → Add user.

Create a user (e.g., admin@example.com / password123).

Copy the id (UUID) of that user.

Run this SQL in the SQL Editor:

sql
UPDATE Employee SET user_id = 'your-uuid-here' WHERE EmployeeID = 1;
(This gives full access to the employee with EmployeeID = 1.)

7. Start the development server
bash
npm start
The app will open at http://localhost:3000.
Log in with the user you created and start managing your warehouse!

🔐 Security
RLS is enabled on all tables – only authenticated users can read data.

Admin policy restricts write operations to users whose UUID is linked to an Employee with JobTitle = 'Manager'.

Environment variables keep secrets out of the codebase.

🚀 Deployment
Build the app:

bash
npm run build
Deploy the build/ folder to Netlify, Vercel, AWS S3, or any static hosting.

Important: Set the same environment variables (REACT_APP_SUPABASE_URL and REACT_APP_SUPABASE_ANON_KEY) in your hosting provider’s dashboard.

📄 License
This project is open‑source and available under the MIT License.

🤝 Contributing
Contributions, issues, and feature requests are welcome!
Feel free to fork the repository and submit a pull request.

👨‍💻 Author
Built by mazeemsharif – GitHub

⭐ Acknowledgements
React‑Admin
Supabase
Material‑UI
