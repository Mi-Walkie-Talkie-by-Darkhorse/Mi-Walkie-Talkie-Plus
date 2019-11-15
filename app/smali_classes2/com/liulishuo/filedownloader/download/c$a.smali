.class final Lcom/liulishuo/filedownloader/download/c$a;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/download/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/download/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/c;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/download/c$a;->a:Lcom/liulishuo/filedownloader/download/c;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/download/c;
    .locals 1

    sget-object v0, Lcom/liulishuo/filedownloader/download/c$a;->a:Lcom/liulishuo/filedownloader/download/c;

    return-object v0
.end method
