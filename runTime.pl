use Win32::TaskScheduler;

$taskMGR1 = Win32::TaskScheduler->New();
$jobName="Command Prompt.job";


$taskMGR1->Activate($jobName);
$maxRunTime=$taskMGR1->GetMaxRunTime();
print "Before:" . $maxRunTime . "\n";
$taskMGR1->SetMaxRunTime($maxRunTime+(60*1000)); # adding a minute
$taskMGR1->Save();
$taskMGR1->Activate($jobName);

print "After:" . $taskMGR1->GetMaxRunTime() . "\n";