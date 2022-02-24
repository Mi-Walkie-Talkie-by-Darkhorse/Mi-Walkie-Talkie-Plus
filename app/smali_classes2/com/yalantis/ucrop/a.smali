.class public Lcom/yalantis/ucrop/a;
.super Ljava/lang/Object;
.source "OkHttpClientStore.java"


# static fields
.field public static final b:Lcom/yalantis/ucrop/a;


# instance fields
.field private a:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/a;

    invoke-direct {v0}, Lcom/yalantis/ucrop/a;-><init>()V

    sput-object v0, Lcom/yalantis/ucrop/a;->b:Lcom/yalantis/ucrop/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/a;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/a;->a:Lokhttp3/OkHttpClient;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/a;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method
