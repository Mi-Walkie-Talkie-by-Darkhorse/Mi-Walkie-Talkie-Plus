.class public final Lkotlin/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlin/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/a;

    invoke-direct {v0}, Lkotlin/a;-><init>()V

    sput-object v0, Lkotlin/a;->a:Lkotlin/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
