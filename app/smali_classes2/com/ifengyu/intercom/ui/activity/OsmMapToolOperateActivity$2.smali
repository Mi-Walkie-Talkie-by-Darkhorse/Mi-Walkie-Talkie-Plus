.class Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$2;
.super Ljava/lang/Object;
.source "OsmMapToolOperateActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
