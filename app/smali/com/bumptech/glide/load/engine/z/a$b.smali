.class public interface abstract Lcom/bumptech/glide/load/engine/z/a$b;
.super Ljava/lang/Object;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/z/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/engine/z/a$b;

.field public static final b:Lcom/bumptech/glide/load/engine/z/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/z/a$b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/z/a$b$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/z/a$b;->a:Lcom/bumptech/glide/load/engine/z/a$b;

    .line 2
    sput-object v0, Lcom/bumptech/glide/load/engine/z/a$b;->b:Lcom/bumptech/glide/load/engine/z/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
