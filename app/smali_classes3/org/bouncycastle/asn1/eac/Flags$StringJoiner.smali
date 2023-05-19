.class Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/eac/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringJoiner"
.end annotation


# instance fields
.field First:Z

.field b:Ljava/lang/StringBuffer;

.field mSeparator:Ljava/lang/String;

.field final synthetic this$0:Lorg/bouncycastle/asn1/eac/Flags;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/eac/Flags;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->this$0:Lorg/bouncycastle/asn1/eac/Flags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->First:Z

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->mSeparator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->First:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->First:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
