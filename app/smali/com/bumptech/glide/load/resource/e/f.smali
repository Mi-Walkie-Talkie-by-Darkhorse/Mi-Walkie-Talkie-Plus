.class public Lcom/bumptech/glide/load/resource/e/f;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/e/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/e/d",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/e/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/resource/e/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/f;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/resource/e/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/resource/e/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/e/d",
            "<TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/resource/e/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/q",
            "<TZ;>;"
        }
    .end annotation

    return-object p1
.end method
