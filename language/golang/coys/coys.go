// https:///github.com/vovs03/codex/language/golang/coys

package main

import (
	"fmt"
	"os"
	"runtime/trace"
)

func main() {

	Specialities := [...]string{
		0: "",
		1: "DEV GO",
		2: "DEV RUBY/RAILS",
		3: "DEV PYTHON",
		4: "DEVOPS ENGINEER",
		5: "MOBILE FLUTTER",
		6: "QA/TEST ENGINEER",
		7: "DBA",
		8: "DATA ENGINEER /SQL",
		9: "FRONTEND DEV (VUEJS)",
	}

	trace.Start(os.Stderr)
	defer trace.Stop()
	var nine = Specialities[1:10]
	fmt.Println(nine[1:10])
	fmt.Print("")
	//fmt.Println(Specialities)
	fmt.Print("Done\n")
}
