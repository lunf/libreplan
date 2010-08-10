<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>
<%@ taglib uri="http://www.zkoss.org/dsp/zk/core" prefix="z" %>

<c:set var="self" value="${requestScope.arg.self}"/>

<div id="${self.uuid}" z.type="ganttz.task.Task" idTask="${self.id}"
    z.autoz="true"${self.outerAttrs}" class="box"
    movingTasksEnabled="${self.movingTasksEnabled}"
    resizingTasksEnabled="${self.resizingTasksEnabled}"
    onMouseover="zkTasklist.showTooltip('tasktooltip${self.uuid}');"
    onMouseOut="zkTasklist.hideTooltip('tasktooltip${self.uuid}');">
	<div class="task-labels" style="display:${self.labelsDisplay}">${self.labelsText}</div>
	<div class="task-resources" style="display:${self.resourcesDisplay}">
		<div class="task-resources-inner">${self.resourcesText}</div>
	</div>
    <div class="completion"></div>
    <div class="completion2"></div>
	<div id="tasktooltip${self.uuid}" class="task_tooltip">${self.tooltipText}</div>
</div>
