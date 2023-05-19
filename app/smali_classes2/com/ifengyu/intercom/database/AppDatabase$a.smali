.class Lcom/ifengyu/intercom/database/AppDatabase$a;
.super Landroidx/room/v0/a;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/database/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/v0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/b;)V
    .locals 1
    .param p1    # La/g/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ALTER TABLE device ADD COLUMN token VERCHAR(64) DEFAULT NULL"

    .line 1
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    return-void
.end method
