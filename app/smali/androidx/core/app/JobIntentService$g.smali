.class final Landroidx/core/app/JobIntentService$g;
.super Landroidx/core/app/JobIntentService$h;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2

    invoke-direct {p0, p2}, Landroidx/core/app/JobIntentService$h;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, p3}, Landroidx/core/app/JobIntentService$h;->a(I)V

    new-instance p2, Landroid/app/job/JobInfo$Builder;

    iget-object v0, p0, Landroidx/core/app/JobIntentService$h;->a:Landroid/content/ComponentName;

    invoke-direct {p2, p3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "jobscheduler"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    return-void
.end method
