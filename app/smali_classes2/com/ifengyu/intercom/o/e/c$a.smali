.class Lcom/ifengyu/intercom/o/e/c$a;
.super Lcom/ifengyu/intercom/o/e/c;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/o/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/o/e/c$a$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/o/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/o/e/c$a$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/o/e/c$a$a;-><init>()V

    return-object v0
.end method