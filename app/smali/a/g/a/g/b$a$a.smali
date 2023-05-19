.class La/g/a/g/b$a$a;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/g/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[La/g/a/g/a;La/g/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/g/a/c$a;

.field final synthetic b:[La/g/a/g/a;


# direct methods
.method constructor <init>(La/g/a/c$a;[La/g/a/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/g/a/g/b$a$a;->a:La/g/a/c$a;

    iput-object p2, p0, La/g/a/g/b$a$a;->b:[La/g/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/g/a/g/b$a$a;->a:La/g/a/c$a;

    iget-object v1, p0, La/g/a/g/b$a$a;->b:[La/g/a/g/a;

    invoke-static {v1, p1}, La/g/a/g/b$a;->h([La/g/a/g/a;Landroid/database/sqlite/SQLiteDatabase;)La/g/a/g/a;

    move-result-object p1

    invoke-virtual {v0, p1}, La/g/a/c$a;->c(La/g/a/b;)V

    return-void
.end method
