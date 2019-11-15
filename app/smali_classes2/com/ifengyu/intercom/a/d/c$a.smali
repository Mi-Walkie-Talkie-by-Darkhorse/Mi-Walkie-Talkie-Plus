.class Lcom/ifengyu/intercom/a/d/c$a;
.super Lcom/ifengyu/intercom/a/d/c;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/a/d/c$a$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/a/d/c$a$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/a/d/c$a$a;-><init>()V

    return-object v0
.end method
