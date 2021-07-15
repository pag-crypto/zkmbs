<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6c3df212-d5bc-41ad-b103-b7c850c4b753(xjsnark.ecdhe)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="d2b1" ref="r:805ab20b-1963-4bd7-ae02-dfb3fada1182(xjsnark.util_and_sha)" />
    <import index="tluv" ref="r:497ff602-8d96-4239-8b0f-254445ada898(xjsnark.field_table)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark">
      <concept id="7495353643810622554" name="xjsnark.structure.JFieldConversion" flags="ng" index="_hXgR">
        <child id="7495353643810622556" name="argument" index="_hXgL" />
        <child id="7495353643810622555" name="jType" index="_hXgQ" />
      </concept>
      <concept id="7553992366106506034" name="xjsnark.structure.JFieldType" flags="ig" index="2D7PWU">
        <reference id="7553992366106506060" name="fieldRec" index="2D7PX4" />
      </concept>
      <concept id="7553992366101796980" name="xjsnark.structure.JAndExpression" flags="ng" index="2DlVhW" />
      <concept id="7495353643616961541" name="xjsnark.structure.SingleLineCommentClassMember" flags="ng" index="DJdLC">
        <property id="7495353643619293787" name="text" index="DRO8Q" />
      </concept>
      <concept id="7553992366094736353" name="xjsnark.structure.VerifyStatement" flags="ng" index="2DKZvD">
        <child id="7553992366094744703" name="condition" index="2DKX1R" />
      </concept>
      <concept id="2787941026031223911" name="xjsnark.structure.JBooleanConversion" flags="ng" index="2DT8nK">
        <child id="2787941026031223913" name="argument" index="2DT8nY" />
        <child id="2787941026031223912" name="jType" index="2DT8nZ" />
      </concept>
      <concept id="8264408278343476866" name="xjsnark.structure.JNotEqualsExpression" flags="ng" index="2JLfk8" />
      <concept id="4165393367774947854" name="xjsnark.structure.JUnsignedIntegerType" flags="ig" index="3qc1$W">
        <property id="4165393367774948449" name="bitwidth" index="3qc1Xj" />
      </concept>
      <concept id="8340315132972716924" name="xjsnark.structure.VerifyEqStatement" flags="ng" index="3s6pcg">
        <child id="8340315132972716925" name="exp1" index="3s6pch" />
        <child id="8340315132972716926" name="exp2" index="3s6pci" />
      </concept>
      <concept id="6307611378306596055" name="xjsnark.structure.JBooleanType" flags="ig" index="1QD1ZQ" />
      <concept id="9096502420330357553" name="xjsnark.structure.JUnsignedIntegerConversion" flags="ng" index="3SuevK">
        <child id="9096502420330357585" name="argument" index="3Sueug" />
        <child id="9096502420330357558" name="jType" index="3SuevR" />
      </concept>
      <concept id="6238098797407520605" name="xjsnark.structure.BitsOp" flags="ng" index="1VPAEj" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2OJAT4DN4UY">
    <property role="TrG5h" value="ECDHE" />
    <node concept="2tJIrI" id="1fN2f79SdGV" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79SdZi" role="jymVt">
      <property role="DRO8Q" value="The following file performs functions required for ECDHE on curve secp256." />
    </node>
    <node concept="DJdLC" id="1fN2f79SYaE" role="jymVt">
      <property role="DRO8Q" value="Some functions from the ecKeyKnowledge example from xJsnark are used as is below." />
    </node>
    <node concept="2tJIrI" id="1fN2f79SDqS" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79SYMy" role="jymVt">
      <property role="DRO8Q" value="Given the two public points exchanged by the parties of the DHE" />
    </node>
    <node concept="DJdLC" id="1fN2f79SZbK" role="jymVt">
      <property role="DRO8Q" value="and one party's secret share (the client's in our case) " />
    </node>
    <node concept="DJdLC" id="1fN2f79SZAQ" role="jymVt">
      <property role="DRO8Q" value="this function returns the final secret derived." />
    </node>
    <node concept="2YIFZL" id="1fN2f79SE7n" role="jymVt">
      <property role="TrG5h" value="DHExchange" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1fN2f79SE7q" role="3clF47">
        <node concept="3clFbH" id="1fN2f79SERk" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1ynJ" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1ynK" role="3cpWs9">
            <property role="TrG5h" value="A_calculated" />
            <node concept="2YIFZM" id="6IcGJgA1ynL" role="33vP2m">
              <ref role="37wK5l" node="64TdDNFQnes" resolve="multiplyGenerator" />
              <ref role="1Pybhc" node="2OJAT4DN4UY" resolve="ECDHE" />
              <node concept="37vLTw" id="1fN2f79SEWy" role="37wK5m">
                <ref role="3cqZAo" node="1fN2f79SEuE" resolve="sk_a" />
              </node>
            </node>
            <node concept="10Q1$e" id="6IcGJgA1ynN" role="1tU5fm">
              <node concept="2D7PWU" id="6IcGJgA1ynO" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79SEO4" role="3cqZAp" />
        <node concept="3s6pcg" id="6IcGJgA1ynQ" role="3cqZAp">
          <node concept="AH0OO" id="6IcGJgA1ynR" role="3s6pch">
            <node concept="3cmrfG" id="6IcGJgA1ynS" role="AHEQo">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6IcGJgA1ynT" role="AHHXb">
              <ref role="3cqZAo" node="6IcGJgA1ynK" resolve="A_calculated" />
            </node>
          </node>
          <node concept="37vLTw" id="1fN2f79SFgg" role="3s6pci">
            <ref role="3cqZAo" node="1fN2f79SEj1" resolve="Ax" />
          </node>
        </node>
        <node concept="3s6pcg" id="6IcGJgA1ynV" role="3cqZAp">
          <node concept="AH0OO" id="6IcGJgA1ynW" role="3s6pch">
            <node concept="3cmrfG" id="6IcGJgA1ynX" role="AHEQo">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="37vLTw" id="6IcGJgA1ynY" role="AHHXb">
              <ref role="3cqZAo" node="6IcGJgA1ynK" resolve="A_calculated" />
            </node>
          </node>
          <node concept="37vLTw" id="1fN2f79SFgv" role="3s6pci">
            <ref role="3cqZAo" node="1fN2f79SElP" resolve="Ay" />
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79SFb3" role="3cqZAp" />
        <node concept="3cpWs8" id="1fN2f79SQQl" role="3cqZAp">
          <node concept="3cpWsn" id="1fN2f79SQQo" role="3cpWs9">
            <property role="TrG5h" value="secret_point" />
            <node concept="10Q1$e" id="1fN2f79SQUh" role="1tU5fm">
              <node concept="2D7PWU" id="1fN2f79SRtj" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
            </node>
            <node concept="1rXfSq" id="1fN2f79SR0L" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4DQLP4" resolve="multiplyPoint" />
              <node concept="37vLTw" id="1fN2f79SR5S" role="37wK5m">
                <ref role="3cqZAo" node="1fN2f79SEoI" resolve="Bx" />
              </node>
              <node concept="37vLTw" id="1fN2f79SR7S" role="37wK5m">
                <ref role="3cqZAo" node="1fN2f79SErD" resolve="By" />
              </node>
              <node concept="37vLTw" id="1fN2f79SR94" role="37wK5m">
                <ref role="3cqZAo" node="1fN2f79SEuE" resolve="sk_a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1fN2f79SRxu" role="3cqZAp">
          <node concept="3cpWsn" id="1fN2f79SRxx" role="3cpWs9">
            <property role="TrG5h" value="secret_bits" />
            <node concept="3qc1$W" id="1fN2f79SRxs" role="1tU5fm">
              <property role="3qc1Xj" value="256" />
            </node>
            <node concept="3SuevK" id="1fN2f79SRDl" role="33vP2m">
              <node concept="3qc1$W" id="1fN2f79SRDn" role="3SuevR">
                <property role="3qc1Xj" value="256" />
              </node>
              <node concept="AH0OO" id="1fN2f79SRIU" role="3Sueug">
                <node concept="3cmrfG" id="1fN2f79SRJI" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="1fN2f79SRI0" role="AHHXb">
                  <ref role="3cqZAo" node="1fN2f79SQQo" resolve="secret_point" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1fN2f79SRUU" role="3cqZAp">
          <node concept="3cpWsn" id="1fN2f79SRUX" role="3cpWs9">
            <property role="TrG5h" value="DHE_secret" />
            <node concept="10Q1$e" id="1fN2f79SRYm" role="1tU5fm">
              <node concept="3qc1$W" id="1fN2f79SRUS" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="1fN2f79SSet" role="33vP2m">
              <ref role="37wK5l" to="d2b1:2OJAT4DNLiz" resolve="convert_256_to_8" />
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <node concept="37vLTw" id="1fN2f79SSTX" role="37wK5m">
                <ref role="3cqZAo" node="1fN2f79SRxx" resolve="secret_bits" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79SRMb" role="3cqZAp" />
        <node concept="3cpWs6" id="1fN2f79SF$i" role="3cqZAp">
          <node concept="37vLTw" id="1fN2f79STg$" role="3cqZAk">
            <ref role="3cqZAo" node="1fN2f79SRUX" resolve="DHE_secret" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1fN2f79SDUK" role="1B3o_S" />
      <node concept="10Q1$e" id="1fN2f79SDUM" role="3clF45">
        <node concept="3qc1$W" id="1fN2f79SDUI" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="1fN2f79SEj1" role="3clF46">
        <property role="TrG5h" value="Ax" />
        <node concept="2D7PWU" id="1fN2f79SEj0" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="1fN2f79SElP" role="3clF46">
        <property role="TrG5h" value="Ay" />
        <node concept="2D7PWU" id="1fN2f79SEmR" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="1fN2f79SEoI" role="3clF46">
        <property role="TrG5h" value="Bx" />
        <node concept="2D7PWU" id="1fN2f79SEpM" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="1fN2f79SErD" role="3clF46">
        <property role="TrG5h" value="By" />
        <node concept="2D7PWU" id="1fN2f79SEsJ" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="1fN2f79SEuE" role="3clF46">
        <property role="TrG5h" value="sk_a" />
        <node concept="3qc1$W" id="1fN2f79SE_G" role="1tU5fm">
          <property role="3qc1Xj" value="256" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="64TdDNFQmWx" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79SWlJ" role="jymVt">
      <property role="DRO8Q" value="Multiplies the hardcoded generator of curve secp256 " />
    </node>
    <node concept="DJdLC" id="1fN2f79SWJP" role="jymVt">
      <property role="DRO8Q" value="by the input scalar" />
    </node>
    <node concept="2YIFZL" id="64TdDNFQnes" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="multiplyGenerator" />
      <node concept="3clFbS" id="64TdDNFQnet" role="3clF47">
        <node concept="3cpWs8" id="64TdDNFQnew" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDNFQnex" role="3cpWs9">
            <property role="TrG5h" value="Gx" />
            <node concept="2D7PWU" id="64TdDNFQney" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="_hXgR" id="64TdDNFQnez" role="33vP2m">
              <node concept="2D7PWU" id="64TdDNFQne$" role="_hXgQ">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
              <node concept="Xl_RD" id="64TdDNFQne_" role="_hXgL">
                <property role="Xl_RC" value="48439561293906451759052585252797914202762949526041747995844080717082404635286" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="64TdDNFQneA" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDNFQneB" role="3cpWs9">
            <property role="TrG5h" value="Gy" />
            <node concept="2D7PWU" id="64TdDNFQneC" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="_hXgR" id="64TdDNFQneD" role="33vP2m">
              <node concept="2D7PWU" id="64TdDNFQneE" role="_hXgQ">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
              <node concept="Xl_RD" id="64TdDNFQneF" role="_hXgL">
                <property role="Xl_RC" value="36134250956749795798585127919587881956611106672985015071877198253568414405109" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDNFQneG" role="3cqZAp" />
        <node concept="3cpWs8" id="64TdDNFQneH" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDNFQneI" role="3cpWs9">
            <property role="TrG5h" value="A" />
            <node concept="10Q1$e" id="64TdDNFQneJ" role="1tU5fm">
              <node concept="2D7PWU" id="64TdDNFQneK" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
            </node>
            <node concept="1rXfSq" id="64TdDNFQneL" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4DQLP4" resolve="multiplyPoint" />
              <node concept="37vLTw" id="64TdDNFQneM" role="37wK5m">
                <ref role="3cqZAo" node="64TdDNFQnex" resolve="Gx" />
              </node>
              <node concept="37vLTw" id="64TdDNFQneN" role="37wK5m">
                <ref role="3cqZAo" node="64TdDNFQneB" resolve="Gy" />
              </node>
              <node concept="37vLTw" id="64TdDNFQnK0" role="37wK5m">
                <ref role="3cqZAo" node="64TdDNFQnfh" resolve="sk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="64TdDNFQnfe" role="3cqZAp">
          <node concept="37vLTw" id="64TdDNFQnff" role="3cqZAk">
            <ref role="3cqZAo" node="64TdDNFQneI" resolve="A" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="64TdDNFQnfg" role="1B3o_S" />
      <node concept="37vLTG" id="64TdDNFQnfh" role="3clF46">
        <property role="TrG5h" value="sk" />
        <node concept="3qc1$W" id="64TdDNFQnfj" role="1tU5fm">
          <property role="3qc1Xj" value="256" />
        </node>
      </node>
      <node concept="10Q1$e" id="64TdDNFQnfk" role="3clF45">
        <node concept="2D7PWU" id="64TdDNFQnfl" role="10Q1$1">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2OJAT4DNaBV" role="jymVt" />
    <node concept="2tJIrI" id="1fN2f79S$el" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79S$yb" role="jymVt">
      <property role="DRO8Q" value="THE FOLLOWING FUNCTIONS ARE FROM THE ecKeyKnowledge EXAMPLE FILE from xJsnark" />
    </node>
    <node concept="DJdLC" id="1fN2f79S_Fy" role="jymVt">
      <property role="DRO8Q" value="with only slight modifications." />
    </node>
    <node concept="2tJIrI" id="1fN2f79S$Iw" role="jymVt" />
    <node concept="2YIFZL" id="2OJAT4DQLP4" role="jymVt">
      <property role="TrG5h" value="multiplyPoint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4DQLP6" role="3clF47">
        <node concept="1X3_iC" id="64TdDMCLuYU" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="2OJAT4DQLPo" role="8Wnug">
            <node concept="3cpWsn" id="2OJAT4DQLPp" role="3cpWs9">
              <property role="TrG5h" value="base_x" />
              <node concept="2D7PWU" id="2OJAT4DQLPq" role="1tU5fm">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
              <node concept="_hXgR" id="2OJAT4DQLPr" role="33vP2m">
                <node concept="2D7PWU" id="2OJAT4DQLPs" role="_hXgQ">
                  <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                </node>
                <node concept="37vLTw" id="2OJAT4DQLPt" role="_hXgL">
                  <ref role="3cqZAo" node="2OJAT4DQLSw" resolve="base_x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="64TdDMCLuYV" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="2OJAT4DQLPu" role="8Wnug">
            <node concept="3cpWsn" id="2OJAT4DQLPv" role="3cpWs9">
              <property role="TrG5h" value="base_y" />
              <node concept="2D7PWU" id="2OJAT4DQLPw" role="1tU5fm">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
              <node concept="_hXgR" id="2OJAT4DQLPx" role="33vP2m">
                <node concept="2D7PWU" id="2OJAT4DQLPy" role="_hXgQ">
                  <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                </node>
                <node concept="37vLTw" id="2OJAT4DQLPz" role="_hXgL">
                  <ref role="3cqZAo" node="2OJAT4DQLSy" resolve="base_y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4DQLP$" role="3cqZAp" />
        <node concept="3SKdUt" id="2OJAT4DQLP_" role="3cqZAp">
          <node concept="3SKdUq" id="2OJAT4DQLPA" role="3SKWNk">
            <property role="3SKdUp" value="Additional safety checks (just precautionary)" />
          </node>
        </node>
        <node concept="1X3_iC" id="2OJAT4HUROu" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="2OJAT4DQLPB" role="8Wnug">
            <node concept="3cpWsn" id="2OJAT4DQLPC" role="3cpWs9">
              <property role="TrG5h" value="order" />
              <node concept="3qc1$W" id="2OJAT4DQLPD" role="1tU5fm">
                <property role="3qc1Xj" value="256" />
              </node>
              <node concept="3SuevK" id="2OJAT4DQLPE" role="33vP2m">
                <node concept="3qc1$W" id="2OJAT4DQLPF" role="3SuevR">
                  <property role="3qc1Xj" value="256" />
                </node>
                <node concept="Xl_RD" id="2OJAT4DQLPG" role="3Sueug">
                  <property role="Xl_RC" value="115792089210356248762697446949407573529996955224135760342422259061068512044369" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2OJAT4EaMrX" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2DKZvD" id="2OJAT4DQLPH" role="8Wnug">
            <node concept="2DlVhW" id="2OJAT4DQLPI" role="2DKX1R">
              <node concept="1eOMI4" id="2OJAT4DQLPJ" role="3uHU7w">
                <node concept="2JLfk8" id="2OJAT4DQLPK" role="1eOMHV">
                  <node concept="3SuevK" id="2OJAT4DQLPL" role="3uHU7w">
                    <node concept="3qc1$W" id="2OJAT4DQLPM" role="3SuevR">
                      <property role="3qc1Xj" value="256" />
                    </node>
                    <node concept="3cmrfG" id="2OJAT4DQLPN" role="3Sueug">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2OJAT4DQLPO" role="3uHU7B">
                    <ref role="3cqZAo" node="2OJAT4DQLS$" resolve="sk" />
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="2OJAT4DQLPP" role="3uHU7B">
                <node concept="3eOVzh" id="2OJAT4DQLPQ" role="1eOMHV">
                  <node concept="37vLTw" id="2OJAT4DQLPR" role="3uHU7B">
                    <ref role="3cqZAo" node="2OJAT4DQLS$" resolve="sk" />
                  </node>
                  <node concept="37vLTw" id="2OJAT4DQLPS" role="3uHU7w">
                    <ref role="3cqZAo" node="2OJAT4DQLPC" resolve="order" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4DQLPU" role="3cqZAp" />
        <node concept="3cpWs8" id="2OJAT4DQLPV" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4DQLPW" role="3cpWs9">
            <property role="TrG5h" value="table" />
            <node concept="10Q1$e" id="2OJAT4DQLPX" role="1tU5fm">
              <node concept="10Q1$e" id="2OJAT4DQLPY" role="10Q1$1">
                <node concept="2D7PWU" id="2OJAT4DQLPZ" role="10Q1$1">
                  <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="2OJAT4DQLQ0" role="33vP2m">
              <node concept="3$_iS1" id="2OJAT4DQLQ1" role="2ShVmc">
                <node concept="3$GHV9" id="2OJAT4DQLQ2" role="3$GQph">
                  <node concept="3cmrfG" id="2OJAT4DQLQ3" role="3$I4v7">
                    <property role="3cmrfH" value="256" />
                  </node>
                </node>
                <node concept="3$GHV9" id="2OJAT4DQLQ4" role="3$GQph">
                  <node concept="3cmrfG" id="2OJAT4DQLQ5" role="3$I4v7">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="2D7PWU" id="2OJAT4DQLQ6" role="3$_nBY">
                  <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2OJAT4DQLQ7" role="3cqZAp">
          <node concept="37vLTI" id="2OJAT4DQLQ8" role="3clFbG">
            <node concept="AH0OO" id="2OJAT4DQLQ9" role="37vLTJ">
              <node concept="3cmrfG" id="2OJAT4DQLQa" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="AH0OO" id="2OJAT4DQLQb" role="AHHXb">
                <node concept="3cmrfG" id="2OJAT4DQLQc" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2OJAT4DQLQd" role="AHHXb">
                  <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2OJAT4DQLQe" role="37vLTx">
              <ref role="3cqZAo" node="2OJAT4DQLSw" resolve="base_x" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2OJAT4DQLQf" role="3cqZAp">
          <node concept="37vLTI" id="2OJAT4DQLQg" role="3clFbG">
            <node concept="AH0OO" id="2OJAT4DQLQh" role="37vLTJ">
              <node concept="3cmrfG" id="2OJAT4DQLQi" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="AH0OO" id="2OJAT4DQLQj" role="AHHXb">
                <node concept="3cmrfG" id="2OJAT4DQLQk" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2OJAT4DQLQl" role="AHHXb">
                  <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2OJAT4DQLQm" role="37vLTx">
              <ref role="3cqZAo" node="2OJAT4DQLSy" resolve="base_y" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDMCMdrg" role="3cqZAp" />
        <node concept="3clFbH" id="2OJAT4DQLQn" role="3cqZAp" />
        <node concept="1X3_iC" id="2OJAT4DQLQo" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2OJAT4DQLQp" role="8Wnug">
            <node concept="2OqwBi" id="2OJAT4DQLQq" role="3clFbG">
              <node concept="10M0yZ" id="2OJAT4DQLQr" role="2Oq$k0">
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              </node>
              <node concept="liA8E" id="2OJAT4DQLQs" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="Xl_RD" id="2OJAT4DQLQt" role="37wK5m">
                  <property role="Xl_RC" value="Precomputing constants (might take time in this version -- see note in the code).. " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2OJAT4DQLQu" role="3cqZAp">
          <node concept="3clFbS" id="2OJAT4DQLQv" role="2LFqv$">
            <node concept="3clFbF" id="2OJAT4DQLQw" role="3cqZAp">
              <node concept="37vLTI" id="2OJAT4DQLQx" role="3clFbG">
                <node concept="1rXfSq" id="2OJAT4DQLQy" role="37vLTx">
                  <ref role="37wK5l" node="2OJAT4DQMFQ" resolve="doublePoint" />
                  <node concept="AH0OO" id="2OJAT4DQLQz" role="37wK5m">
                    <node concept="3cmrfG" id="2OJAT4DQLQ$" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="AH0OO" id="2OJAT4DQLQ_" role="AHHXb">
                      <node concept="3cpWsd" id="2OJAT4DQLQA" role="AHEQo">
                        <node concept="3cmrfG" id="2OJAT4DQLQB" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="2OJAT4DQLQC" role="3uHU7B">
                          <ref role="3cqZAo" node="2OJAT4DQLQO" resolve="i" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2OJAT4DQLQD" role="AHHXb">
                        <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                      </node>
                    </node>
                  </node>
                  <node concept="AH0OO" id="2OJAT4DQLQE" role="37wK5m">
                    <node concept="3cmrfG" id="2OJAT4DQLQF" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="AH0OO" id="2OJAT4DQLQG" role="AHHXb">
                      <node concept="3cpWsd" id="2OJAT4DQLQH" role="AHEQo">
                        <node concept="3cmrfG" id="2OJAT4DQLQI" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="2OJAT4DQLQJ" role="3uHU7B">
                          <ref role="3cqZAo" node="2OJAT4DQLQO" resolve="i" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2OJAT4DQLQK" role="AHHXb">
                        <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="AH0OO" id="2OJAT4DQLQL" role="37vLTJ">
                  <node concept="37vLTw" id="2OJAT4DQLQM" role="AHEQo">
                    <ref role="3cqZAo" node="2OJAT4DQLQO" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="2OJAT4DQLQN" role="AHHXb">
                    <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2OJAT4DQLQO" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2OJAT4DQLQP" role="1tU5fm" />
            <node concept="3cmrfG" id="2OJAT4DQLQQ" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3eOVzh" id="2OJAT4DQLQR" role="1Dwp0S">
            <node concept="3cmrfG" id="2OJAT4DQLQS" role="3uHU7w">
              <property role="3cmrfH" value="256" />
            </node>
            <node concept="37vLTw" id="2OJAT4DQLQT" role="3uHU7B">
              <ref role="3cqZAo" node="2OJAT4DQLQO" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="2OJAT4DQLQU" role="1Dwrff">
            <node concept="37vLTw" id="2OJAT4DQLQV" role="2$L3a6">
              <ref role="3cqZAo" node="2OJAT4DQLQO" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4DQLQW" role="3cqZAp" />
        <node concept="3SKdUt" id="2OJAT4DQLQX" role="3cqZAp">
          <node concept="3SKdUq" id="2OJAT4DQLQY" role="3SKWNk">
            <property role="3SKdUp" value="a boolean to keep track when it's safe to apply the addition formula of affine points" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4DQLQZ" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4DQLR0" role="3cpWs9">
            <property role="TrG5h" value="init" />
            <node concept="1QD1ZQ" id="2OJAT4DQLR1" role="1tU5fm" />
            <node concept="2DT8nK" id="2OJAT4DQLR2" role="33vP2m">
              <node concept="1QD1ZQ" id="2OJAT4DQLR3" role="2DT8nZ" />
              <node concept="3clFbT" id="2OJAT4DQLR4" role="2DT8nY">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4DQLR5" role="3cqZAp" />
        <node concept="3cpWs8" id="2OJAT4DQLR6" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4DQLR7" role="3cpWs9">
            <property role="TrG5h" value="p_x" />
            <node concept="2D7PWU" id="2OJAT4DQLR8" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4DQLR9" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4DQLRa" role="3cpWs9">
            <property role="TrG5h" value="p_y" />
            <node concept="2D7PWU" id="2OJAT4DQLRb" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4DQLRc" role="3cqZAp" />
        <node concept="1Dw8fO" id="2OJAT4DQLRd" role="3cqZAp">
          <node concept="3clFbS" id="2OJAT4DQLRe" role="2LFqv$">
            <node concept="3clFbJ" id="2OJAT4DQLRf" role="3cqZAp">
              <node concept="3clFbS" id="2OJAT4DQLRg" role="3clFbx">
                <node concept="3clFbJ" id="2OJAT4DQLRh" role="3cqZAp">
                  <node concept="3clFbS" id="2OJAT4DQLRi" role="3clFbx">
                    <node concept="3cpWs8" id="2OJAT4DQLRj" role="3cqZAp">
                      <node concept="3cpWsn" id="2OJAT4DQLRk" role="3cpWs9">
                        <property role="TrG5h" value="r" />
                        <node concept="10Q1$e" id="2OJAT4DQLRl" role="1tU5fm">
                          <node concept="2D7PWU" id="2OJAT4DQLRm" role="10Q1$1">
                            <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="2OJAT4DQLRn" role="33vP2m">
                          <ref role="37wK5l" node="2OJAT4DQMlw" resolve="addPoints" />
                          <node concept="37vLTw" id="2OJAT4DQLRo" role="37wK5m">
                            <ref role="3cqZAo" node="2OJAT4DQLR7" resolve="p_x" />
                          </node>
                          <node concept="37vLTw" id="2OJAT4DQLRp" role="37wK5m">
                            <ref role="3cqZAo" node="2OJAT4DQLRa" resolve="p_y" />
                          </node>
                          <node concept="AH0OO" id="2OJAT4DQLRq" role="37wK5m">
                            <node concept="3cmrfG" id="2OJAT4DQLRr" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="AH0OO" id="2OJAT4DQLRs" role="AHHXb">
                              <node concept="37vLTw" id="2OJAT4DQLRt" role="AHEQo">
                                <ref role="3cqZAo" node="2OJAT4DQLSe" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="2OJAT4DQLRu" role="AHHXb">
                                <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                              </node>
                            </node>
                          </node>
                          <node concept="AH0OO" id="2OJAT4DQLRv" role="37wK5m">
                            <node concept="3cmrfG" id="2OJAT4DQLRw" role="AHEQo">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="AH0OO" id="2OJAT4DQLRx" role="AHHXb">
                              <node concept="37vLTw" id="2OJAT4DQLRy" role="AHEQo">
                                <ref role="3cqZAo" node="2OJAT4DQLSe" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="2OJAT4DQLRz" role="AHHXb">
                                <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2OJAT4DQLR$" role="3cqZAp">
                      <node concept="37vLTI" id="2OJAT4DQLR_" role="3clFbG">
                        <node concept="AH0OO" id="2OJAT4DQLRA" role="37vLTx">
                          <node concept="3cmrfG" id="2OJAT4DQLRB" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="2OJAT4DQLRC" role="AHHXb">
                            <ref role="3cqZAo" node="2OJAT4DQLRk" resolve="r" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2OJAT4DQLRD" role="37vLTJ">
                          <ref role="3cqZAo" node="2OJAT4DQLR7" resolve="p_x" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2OJAT4DQLRE" role="3cqZAp">
                      <node concept="37vLTI" id="2OJAT4DQLRF" role="3clFbG">
                        <node concept="AH0OO" id="2OJAT4DQLRG" role="37vLTx">
                          <node concept="3cmrfG" id="2OJAT4DQLRH" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="2OJAT4DQLRI" role="AHHXb">
                            <ref role="3cqZAo" node="2OJAT4DQLRk" resolve="r" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2OJAT4DQLRJ" role="37vLTJ">
                          <ref role="3cqZAo" node="2OJAT4DQLRa" resolve="p_y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2OJAT4DQLRK" role="3clFbw">
                    <ref role="3cqZAo" node="2OJAT4DQLR0" resolve="init" />
                  </node>
                  <node concept="9aQIb" id="2OJAT4DQLRL" role="9aQIa">
                    <node concept="3clFbS" id="2OJAT4DQLRM" role="9aQI4">
                      <node concept="3clFbF" id="2OJAT4DQLRN" role="3cqZAp">
                        <node concept="37vLTI" id="2OJAT4DQLRO" role="3clFbG">
                          <node concept="2DT8nK" id="2OJAT4DQLRP" role="37vLTx">
                            <node concept="1QD1ZQ" id="2OJAT4DQLRQ" role="2DT8nZ" />
                            <node concept="3clFbT" id="2OJAT4DQLRR" role="2DT8nY">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2OJAT4DQLRS" role="37vLTJ">
                            <ref role="3cqZAo" node="2OJAT4DQLR0" resolve="init" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2OJAT4DQLRT" role="3cqZAp">
                        <node concept="37vLTI" id="2OJAT4DQLRU" role="3clFbG">
                          <node concept="37vLTw" id="2OJAT4DQLRV" role="37vLTJ">
                            <ref role="3cqZAo" node="2OJAT4DQLR7" resolve="p_x" />
                          </node>
                          <node concept="AH0OO" id="2OJAT4DQLRW" role="37vLTx">
                            <node concept="3cmrfG" id="2OJAT4DQLRX" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="AH0OO" id="2OJAT4DQLRY" role="AHHXb">
                              <node concept="37vLTw" id="2OJAT4DQLRZ" role="AHEQo">
                                <ref role="3cqZAo" node="2OJAT4DQLSe" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="2OJAT4DQLS0" role="AHHXb">
                                <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2OJAT4DQLS1" role="3cqZAp">
                        <node concept="37vLTI" id="2OJAT4DQLS2" role="3clFbG">
                          <node concept="37vLTw" id="2OJAT4DQLS3" role="37vLTJ">
                            <ref role="3cqZAo" node="2OJAT4DQLRa" resolve="p_y" />
                          </node>
                          <node concept="AH0OO" id="2OJAT4DQLS4" role="37vLTx">
                            <node concept="3cmrfG" id="2OJAT4DQLS5" role="AHEQo">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="AH0OO" id="2OJAT4DQLS6" role="AHHXb">
                              <node concept="37vLTw" id="2OJAT4DQLS7" role="AHEQo">
                                <ref role="3cqZAo" node="2OJAT4DQLSe" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="2OJAT4DQLS8" role="AHHXb">
                                <ref role="3cqZAo" node="2OJAT4DQLPW" resolve="table" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="AH0OO" id="2OJAT4DQLS9" role="3clFbw">
                <node concept="37vLTw" id="2OJAT4DQLSa" role="AHEQo">
                  <ref role="3cqZAo" node="2OJAT4DQLSe" resolve="i" />
                </node>
                <node concept="2OqwBi" id="2OJAT4DQLSb" role="AHHXb">
                  <node concept="37vLTw" id="2OJAT4DQLSc" role="2Oq$k0">
                    <ref role="3cqZAo" node="2OJAT4DQLS$" resolve="sk" />
                  </node>
                  <node concept="1VPAEj" id="2OJAT4DQLSd" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2OJAT4DQLSe" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2OJAT4DQLSf" role="1tU5fm" />
            <node concept="3cmrfG" id="2OJAT4DQLSg" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2OJAT4DQLSh" role="1Dwp0S">
            <node concept="3cmrfG" id="2OJAT4DQLSi" role="3uHU7w">
              <property role="3cmrfH" value="256" />
            </node>
            <node concept="37vLTw" id="2OJAT4DQLSj" role="3uHU7B">
              <ref role="3cqZAo" node="2OJAT4DQLSe" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="2OJAT4DQLSk" role="1Dwrff">
            <node concept="37vLTw" id="2OJAT4DQLSl" role="2$L3a6">
              <ref role="3cqZAo" node="2OJAT4DQLSe" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4DQLSm" role="3cqZAp" />
        <node concept="3cpWs6" id="2OJAT4DQLSn" role="3cqZAp">
          <node concept="2ShNRf" id="2OJAT4DQLSo" role="3cqZAk">
            <node concept="3g6Rrh" id="2OJAT4DQLSp" role="2ShVmc">
              <node concept="2D7PWU" id="2OJAT4DQLSq" role="3g7fb8">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
              <node concept="37vLTw" id="2OJAT4DQLSr" role="3g7hyw">
                <ref role="3cqZAo" node="2OJAT4DQLR7" resolve="p_x" />
              </node>
              <node concept="37vLTw" id="2OJAT4DQLSs" role="3g7hyw">
                <ref role="3cqZAo" node="2OJAT4DQLRa" resolve="p_y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4DQLSu" role="3clF45">
        <node concept="2D7PWU" id="2OJAT4DQLSv" role="10Q1$1">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQLSw" role="3clF46">
        <property role="TrG5h" value="base_x" />
        <node concept="2D7PWU" id="64TdDMCLumX" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQLSy" role="3clF46">
        <property role="TrG5h" value="base_y" />
        <node concept="2D7PWU" id="64TdDMCLuIb" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQLS$" role="3clF46">
        <property role="TrG5h" value="sk" />
        <node concept="3qc1$W" id="2OJAT4DQLS_" role="1tU5fm">
          <property role="3qc1Xj" value="256" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4DQLSt" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4DN8Hv" role="jymVt" />
    <node concept="2YIFZL" id="2OJAT4DQMlw" role="jymVt">
      <property role="TrG5h" value="addPoints" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4DQMly" role="3clF47">
        <node concept="3cpWs8" id="3ZyZ1ekjGS5" role="3cqZAp">
          <node concept="3cpWsn" id="3ZyZ1ekjGS6" role="3cpWs9">
            <property role="TrG5h" value="lambda" />
            <node concept="2D7PWU" id="3ZyZ1ekjGS7" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="FJ1c_" id="3ZyZ1ekjHc9" role="33vP2m">
              <node concept="1eOMI4" id="3ZyZ1ekjGSf" role="3uHU7B">
                <node concept="3cpWsd" id="3ZyZ1ekjGSg" role="1eOMHV">
                  <node concept="37vLTw" id="3ZyZ1ekjGSh" role="3uHU7w">
                    <ref role="3cqZAo" node="2OJAT4DQMme" resolve="y1" />
                  </node>
                  <node concept="37vLTw" id="3ZyZ1ekjGSi" role="3uHU7B">
                    <ref role="3cqZAo" node="2OJAT4DQMmi" resolve="y2" />
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="3ZyZ1ekjGSa" role="3uHU7w">
                <node concept="3cpWsd" id="3ZyZ1ekjGSb" role="1eOMHV">
                  <node concept="37vLTw" id="3ZyZ1ekjGSc" role="3uHU7w">
                    <ref role="3cqZAo" node="2OJAT4DQMmc" resolve="x1" />
                  </node>
                  <node concept="37vLTw" id="3ZyZ1ekjGSd" role="3uHU7B">
                    <ref role="3cqZAo" node="2OJAT4DQMmg" resolve="x2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2qKKpuf8I_o" role="3cqZAp">
          <node concept="3cpWsn" id="2qKKpuf8I_r" role="3cpWs9">
            <property role="TrG5h" value="xr" />
            <node concept="2D7PWU" id="2qKKpuf8I_m" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="3cpWsd" id="2qKKpuf8J04" role="33vP2m">
              <node concept="37vLTw" id="2qKKpuf8J1D" role="3uHU7w">
                <ref role="3cqZAo" node="2OJAT4DQMmg" resolve="x2" />
              </node>
              <node concept="3cpWsd" id="2qKKpuf8IT$" role="3uHU7B">
                <node concept="17qRlL" id="2qKKpuf8IOu" role="3uHU7B">
                  <node concept="37vLTw" id="2qKKpuf8IM8" role="3uHU7B">
                    <ref role="3cqZAo" node="3ZyZ1ekjGS6" resolve="lambda" />
                  </node>
                  <node concept="37vLTw" id="2qKKpuf8IQi" role="3uHU7w">
                    <ref role="3cqZAo" node="3ZyZ1ekjGS6" resolve="lambda" />
                  </node>
                </node>
                <node concept="37vLTw" id="2qKKpuf8IXu" role="3uHU7w">
                  <ref role="3cqZAo" node="2OJAT4DQMmc" resolve="x1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2qKKpuf8J5X" role="3cqZAp">
          <node concept="3cpWsn" id="2qKKpuf8J60" role="3cpWs9">
            <property role="TrG5h" value="yr" />
            <node concept="2D7PWU" id="2qKKpuf8J5V" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="3cpWsd" id="2qKKpuf8JW7" role="33vP2m">
              <node concept="37vLTw" id="2qKKpuf8JZD" role="3uHU7w">
                <ref role="3cqZAo" node="2OJAT4DQMme" resolve="y1" />
              </node>
              <node concept="17qRlL" id="2qKKpuf8J$c" role="3uHU7B">
                <node concept="37vLTw" id="2qKKpuf8Jw9" role="3uHU7B">
                  <ref role="3cqZAo" node="3ZyZ1ekjGS6" resolve="lambda" />
                </node>
                <node concept="1eOMI4" id="2qKKpuf8JA5" role="3uHU7w">
                  <node concept="3cpWsd" id="2qKKpuf8JMB" role="1eOMHV">
                    <node concept="37vLTw" id="2qKKpuf8JOA" role="3uHU7w">
                      <ref role="3cqZAo" node="2qKKpuf8I_r" resolve="xr" />
                    </node>
                    <node concept="37vLTw" id="2qKKpuf8JK8" role="3uHU7B">
                      <ref role="3cqZAo" node="2OJAT4DQMmc" resolve="x1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2qKKpuf8TKP" role="3cqZAp">
          <node concept="2ShNRf" id="2qKKpuf8TKQ" role="3cqZAk">
            <node concept="3g6Rrh" id="2qKKpuf8TKR" role="2ShVmc">
              <node concept="2D7PWU" id="2qKKpuf8TKS" role="3g7fb8">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
              <node concept="37vLTw" id="2qKKpuf8TKT" role="3g7hyw">
                <ref role="3cqZAo" node="2qKKpuf8I_r" resolve="xr" />
              </node>
              <node concept="37vLTw" id="2qKKpuf8TKU" role="3g7hyw">
                <ref role="3cqZAo" node="2qKKpuf8J60" resolve="yr" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4DQMma" role="3clF45">
        <node concept="2D7PWU" id="2OJAT4DQMmb" role="10Q1$1">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQMmc" role="3clF46">
        <property role="TrG5h" value="x1" />
        <node concept="2D7PWU" id="2OJAT4DQMmd" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQMme" role="3clF46">
        <property role="TrG5h" value="y1" />
        <node concept="2D7PWU" id="2OJAT4DQMmf" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQMmg" role="3clF46">
        <property role="TrG5h" value="x2" />
        <node concept="2D7PWU" id="2OJAT4DQMmh" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQMmi" role="3clF46">
        <property role="TrG5h" value="y2" />
        <node concept="2D7PWU" id="2OJAT4DQMmj" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4K83FU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4DN9i0" role="jymVt" />
    <node concept="2YIFZL" id="2OJAT4DQMFQ" role="jymVt">
      <property role="TrG5h" value="doublePoint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4DQMFS" role="3clF47">
        <node concept="3cpWs8" id="2qKKpuf8Ksg" role="3cqZAp">
          <node concept="3cpWsn" id="2qKKpuf8Ksh" role="3cpWs9">
            <property role="TrG5h" value="lambda" />
            <node concept="2D7PWU" id="2qKKpuf8Ksi" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="FJ1c_" id="3ZyZ1ek_4Q7" role="33vP2m">
              <node concept="1eOMI4" id="2qKKpuf8Ksq" role="3uHU7B">
                <node concept="3cpWs3" id="2qKKpuf8RRR" role="1eOMHV">
                  <node concept="_hXgR" id="2qKKpuf8RYR" role="3uHU7w">
                    <node concept="2D7PWU" id="2qKKpuf8RYT" role="_hXgQ">
                      <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                    </node>
                    <node concept="3cmrfG" id="2qKKpufkYPy" role="_hXgL">
                      <property role="3cmrfH" value="-3" />
                    </node>
                  </node>
                  <node concept="17qRlL" id="2qKKpuf8RI6" role="3uHU7B">
                    <node concept="17qRlL" id="2qKKpuf8RAv" role="3uHU7B">
                      <node concept="_hXgR" id="2qKKpuf8R3g" role="3uHU7B">
                        <node concept="2D7PWU" id="2qKKpuf8R3i" role="_hXgQ">
                          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                        </node>
                        <node concept="3cmrfG" id="2qKKpuf8ReJ" role="_hXgL">
                          <property role="3cmrfH" value="3" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2qKKpuf8RDu" role="3uHU7w">
                        <ref role="3cqZAo" node="2OJAT4DQMGK" resolve="x1" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2qKKpuf8RLo" role="3uHU7w">
                      <ref role="3cqZAo" node="2OJAT4DQMGK" resolve="x1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="2qKKpuf8Ksl" role="3uHU7w">
                <node concept="17qRlL" id="2qKKpuf8Syz" role="1eOMHV">
                  <node concept="37vLTw" id="2qKKpuf8SAt" role="3uHU7w">
                    <ref role="3cqZAo" node="2OJAT4DQMGM" resolve="y1" />
                  </node>
                  <node concept="_hXgR" id="2qKKpuf8SIT" role="3uHU7B">
                    <node concept="2D7PWU" id="2qKKpuf8SIV" role="_hXgQ">
                      <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                    </node>
                    <node concept="3cmrfG" id="2qKKpuf8SQq" role="_hXgL">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2qKKpuf8Ksu" role="3cqZAp">
          <node concept="3cpWsn" id="2qKKpuf8Ksv" role="3cpWs9">
            <property role="TrG5h" value="xr" />
            <node concept="2D7PWU" id="2qKKpuf8Ksw" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="3cpWsd" id="2qKKpuf8Ksz" role="33vP2m">
              <node concept="17qRlL" id="2qKKpuf8Ks$" role="3uHU7B">
                <node concept="37vLTw" id="2qKKpuf8Ks_" role="3uHU7B">
                  <ref role="3cqZAo" node="2qKKpuf8Ksh" resolve="lambda" />
                </node>
                <node concept="37vLTw" id="2qKKpuf8KsA" role="3uHU7w">
                  <ref role="3cqZAo" node="2qKKpuf8Ksh" resolve="lambda" />
                </node>
              </node>
              <node concept="17qRlL" id="2qKKpuf8Q$P" role="3uHU7w">
                <node concept="_hXgR" id="2qKKpuf8QBb" role="3uHU7w">
                  <node concept="2D7PWU" id="2qKKpuf8QBd" role="_hXgQ">
                    <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
                  </node>
                  <node concept="3cmrfG" id="2qKKpuf8QHc" role="_hXgL">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="37vLTw" id="2qKKpuf8KsB" role="3uHU7B">
                  <ref role="3cqZAo" node="2OJAT4DQMGK" resolve="x1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2qKKpuf8KsC" role="3cqZAp">
          <node concept="3cpWsn" id="2qKKpuf8KsD" role="3cpWs9">
            <property role="TrG5h" value="yr" />
            <node concept="2D7PWU" id="2qKKpuf8KsE" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
            </node>
            <node concept="3cpWsd" id="2qKKpuf8KsF" role="33vP2m">
              <node concept="37vLTw" id="2qKKpuf8KsG" role="3uHU7w">
                <ref role="3cqZAo" node="2OJAT4DQMGM" resolve="y1" />
              </node>
              <node concept="17qRlL" id="2qKKpuf8KsH" role="3uHU7B">
                <node concept="37vLTw" id="2qKKpuf8KsI" role="3uHU7B">
                  <ref role="3cqZAo" node="2qKKpuf8Ksh" resolve="lambda" />
                </node>
                <node concept="1eOMI4" id="2qKKpuf8KsJ" role="3uHU7w">
                  <node concept="3cpWsd" id="2qKKpuf8KsK" role="1eOMHV">
                    <node concept="37vLTw" id="2qKKpuf8KsL" role="3uHU7w">
                      <ref role="3cqZAo" node="2qKKpuf8Ksv" resolve="xr" />
                    </node>
                    <node concept="37vLTw" id="2qKKpuf8KsM" role="3uHU7B">
                      <ref role="3cqZAo" node="2OJAT4DQMGK" resolve="x1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2qKKpuf8Tg_" role="3cqZAp">
          <node concept="2ShNRf" id="2qKKpuf8Tm4" role="3cqZAk">
            <node concept="3g6Rrh" id="2qKKpuf8Twl" role="2ShVmc">
              <node concept="2D7PWU" id="2qKKpuf8Tsx" role="3g7fb8">
                <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
              </node>
              <node concept="37vLTw" id="2qKKpuf8TAK" role="3g7hyw">
                <ref role="3cqZAo" node="2qKKpuf8Ksv" resolve="xr" />
              </node>
              <node concept="37vLTw" id="2qKKpuf8TEF" role="3g7hyw">
                <ref role="3cqZAo" node="2qKKpuf8KsD" resolve="yr" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4DQMGI" role="3clF45">
        <node concept="2D7PWU" id="2OJAT4DQMGJ" role="10Q1$1">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQMGK" role="3clF46">
        <property role="TrG5h" value="x1" />
        <node concept="2D7PWU" id="2OJAT4DQMGL" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4DQMGM" role="3clF46">
        <property role="TrG5h" value="y1" />
        <node concept="2D7PWU" id="2OJAT4DQMGN" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4K83K_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4DN4Vc" role="jymVt" />
    <node concept="3Tm1VV" id="2OJAT4DN4UZ" role="1B3o_S" />
  </node>
</model>

