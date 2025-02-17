### Project Discovery Document

### Project: Conversation History for Projects
**Questions & Expected Answers**

*Project Features*
Should multiple users be able to leave comments?
	Yes, multiple users should be able to comment on a project.

Should we show only the projects created by the user?
	No, we should show all available projects for the users.

Should we authenticate users?
	Yes, we should authenticate users and only allow comments and updates for authenticated users

What statuses should a project have?
	A project can have statuses like: pending, in progress, completed.

Should we track who changed the project status?
	Yes, we should track which user changed the status.

Should comments and status changes be timestamped?
	Yes, we need timestamps for all history records.

How should the conversation history be displayed?
	It should be shown in chronological order (oldest first).

Should we support real-time updates?
	Yes, we should support real time updates.

*User & Permissions*
Who can change the project status?
	Only authenticated users should be allowed to change the status.

Should users be able to edit or delete their own comments?
	Yes, users can edit/delete their own comments, but not others.

Should admins be able to delete any comment?
	Yes, admins should have the ability to delete any comment.

*Database & Validations*
Should multiple projects have the same title?
	No, project titles should be unique.

Can a project exist without a user?
	No, every project should belong to a user.

What happens if a user is deleted?
	Their comments and status updates should remain but be marked as "Deleted User".


**Next Steps**
-Display timestamps for all comments
-Implement user roles (admin & regular users)
-Restrict project status updates based on roles