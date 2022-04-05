.class public Lc/b/a/a/a/a$c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final a:Lc/b/a/a/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/b/a/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/b/a/a/a/a$c;-><init>(Lc/b/a/a/a/a$c$a;)V

    sput-object v0, Lc/b/a/a/a/a$c$b;->a:Lc/b/a/a/a/a$c;

    return-void
.end method
