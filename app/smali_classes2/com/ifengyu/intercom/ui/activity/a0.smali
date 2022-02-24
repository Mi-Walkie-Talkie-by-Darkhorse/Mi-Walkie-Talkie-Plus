.class public final synthetic Lcom/ifengyu/intercom/ui/activity/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/a0;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/a0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/a0;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/a0;->b:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e(I)V

    return-void
.end method
