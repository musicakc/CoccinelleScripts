@@
symbol TASK_RUNNING;
@@
-current->state = TASK_RUNNING;
+__set_current_state(TASK_RUNNING);
@@
symbol TASK_INTERRUPTIBLE;
@@
-current->state = TASK_INTERRUPTIBLE;
+set_current_state(TASK_INTERRUPTIBLE);

