.class final Lcom/ifengyu/intercom/lite/database/LiteDatabase$a;
.super Landroidx/room/q/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/database/LiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/room/q/a;-><init>(II)V

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

    invoke-interface {p1, v0}, La/g/a/b;->execSQL(Ljava/lang/String;)V

    return-void
.end method
