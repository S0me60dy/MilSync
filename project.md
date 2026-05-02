
Project Proposal: MilSync - Unified Military Record & Recruitment Portal
This proposal outlines the development of MilSync, a C# desktop application designed to solve the critical information problem of fragmented military administration and recruitment.  
1. What is your project about?
MilSync is a "Professional Military Lifecycle" tool that combines the administrative functionality of a record renewal system (inspired by Reserve+) with a specialized job marketplace (similar to Indeed). The project addresses the real-life information problem of ensuring military personnel have up-to-date records while providing a transparent, secure path to specialized military roles. By integrating these two services, the application ensures that job eligibility is automatically verified against a user’s official military status.  
2. Explanation of Features
The application is categorized into three distinct functional areas as required by the project guidelines:  
User & Account Features
• Identity Management: Users can register, log in, change passwords, and delete their accounts through a user-friendly graphical interface.  
• Military Record Renewal: A core feature allowing users to update contact info, residence, and upload a profile picture to maintain active status.  
• Job Marketplace: Users can browse job openings tailored to their rank and apply directly within the application.  
• Status Dashboard: A central workspace providing an overview of current military standing (e.g., "Records Up-to-Date") and an application tracker.  
Admin Features
• User Oversight: Admins have a full overview of users and their current record statuses.  
• Verification Workflow: The ability to accept or reject user requests for record updates or job applications.  
• Data Control: Direct permissions to create, edit, or delete user profiles to ensure database integrity.  
Technical Features
• Secure Database: All data is stored in a centralized database.  
• PDF Exports: Ability for users or admins to download transaction histories or record summaries as PDFs.  
3. In-Depth Project Analysis
To ensure a high-quality delivery, MilSync will be developed with the following priorities:
• Security-First Mindset: Because the system handles sensitive military data, security is the top priority. We will implement robust authentication and plan for "Nice to Have" features like Two-Factor Authentication (2FA).  
• Object-Oriented Architecture: The application will be a well-structured C# project using OOP principles to separate concerns between user management, job matching logic, and record validation.  
• Group Collaboration & Git: As a group assignment, we will use GIT for version control to ensure transparent and organized code development.  
• Rigorous Testing: Our main objective is to deliver an error-free product. We will conduct extensive flow testing—specifically ensuring that a user’s job eligibility updates instantly when their military records are renewed.  
• AI Integration: We will utilize ChatGPT and other AI tools to assist in generating complex validation logic and optimizing our C# code to bring the application to a professional level. 


Using dotnet SDK because it is an ultimate engine to build C# apps on Debian. SDK includes CSC, dotnet CLI, allows to run and test apps automatically
Using AvaloniaUI cause WPF is exclusive to Windows and Avalonia has native linux support which uses OOP design. On top of that Avalonia is compatible with the VS Code which is cross-platform ensuring both parties who use different OS.
MySql.Data has been used. MySql.Data is an offical db driver by Oracle that allows communication between my C# app and MySql db. As an alternative MySqlConnector can be used(community driven, handles async code better)
We will be using Model-View-ViewModel(mvvm) model for my project with Avalonia.
Setting up the .git repository in the project to track changes to the project over time.
The structure created by AvaloniaUI:
	- Models: the place where all the classes will be handled
	- ViewModels: the place where all the logic is handled
	- Views: all the UI
	- Assets: all the images
https://github.com/kmaragon/Konscious.Security.Cryptography // Argon2id repository


Check later for Sasha:
- abstract
- navigation properties in the class
- using decimal data type
- null, default values in constructor
- inheritance
- required keyword
