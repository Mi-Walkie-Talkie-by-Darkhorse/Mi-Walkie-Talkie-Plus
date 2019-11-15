.class Lcom/ifengyu/intercom/MiTalkiApp$1;
.super Ljava/lang/Object;
.source "MiTalkiApp.java"

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/MiTalkiApp;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/MiTalkiApp;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/MiTalkiApp;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$1;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MiTalkiApp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "MiTalkiApp"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
