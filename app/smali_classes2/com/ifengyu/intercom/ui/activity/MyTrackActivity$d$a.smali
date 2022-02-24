.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d$a;
.super Ljava/lang/Object;
.source "MyTrackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d$a;->a:I

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    return-void
.end method
