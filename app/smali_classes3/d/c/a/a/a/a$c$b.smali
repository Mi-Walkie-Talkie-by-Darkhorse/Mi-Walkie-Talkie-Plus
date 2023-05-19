.class public Ld/c/a/a/a/a$c$b;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c/a/a/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final a:Ld/c/a/a/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/c/a/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/c/a/a/a/a$c;-><init>(Ld/c/a/a/a/a$c$a;)V

    sput-object v0, Ld/c/a/a/a/a$c$b;->a:Ld/c/a/a/a/a$c;

    return-void
.end method
